"""
Обработчики POST-запросов для форм
"""

from bottle import request, redirect
import json
import os
import re
from datetime import datetime

DATA_DIR = 'data'
REQUESTS_FILE = os.path.join(DATA_DIR, 'requests.json')

# Убедимся, что папка data существует
if not os.path.exists(DATA_DIR):
    os.makedirs(DATA_DIR)


def validate_phone(phone):
    """Проверка корректности телефона (10-15 цифр)"""
    cleaned = re.sub(r'[\s\(\)\-+]', '', phone)
    return cleaned.isdigit() and 10 <= len(cleaned) <= 15


def save_request(request_data):
    """Сохранение заявки в JSON файл"""
    requests = []
    
    # Загружаем существующие заявки
    if os.path.exists(REQUESTS_FILE):
        with open(REQUESTS_FILE, 'r', encoding='utf-8') as f:
            requests = json.load(f)
    
    # Добавляем новую заявку
    request_data['id'] = len(requests) + 1
    request_data['created_at'] = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    requests.append(request_data)
    
    # Сохраняем обратно
    with open(REQUESTS_FILE, 'w', encoding='utf-8') as f:
        json.dump(requests, f, ensure_ascii=False, indent=2)


def submit_request_handler():
    """Обработчик формы заявки на расследование"""
    
    name = request.forms.get('name', '').strip()
    phone = request.forms.get('phone', '').strip()
    method = request.forms.get('method', '').strip()
    description = request.forms.get('description', '').strip()
    
    errors = {}
    
    # Валидация
    if not name:
        errors['name'] = 'Пожалуйста, укажите ваше имя'
    
    if not phone:
        errors['phone'] = 'Телефон обязателен для связи'
    elif not validate_phone(phone):
        errors['phone'] = 'Неверный формат телефона (должно быть 10-15 цифр)'
    
    if not method:
        errors['method'] = 'Выберите интересующую вас новинку'
    
    if not description:
        errors['description'] = 'Опишите вашу ситуацию'
    elif len(description) < 10:
        errors['description'] = 'Пожалуйста, опишите ситуацию подробнее (минимум 10 символов)'
    
    # Если есть ошибки — возвращаем на страницу с ошибками
    if errors:
        from routes import get_novelties_data
        methods = get_novelties_data()
        from bottle import template
        return template('new', 
                       title='Актуальные новинки',
                       year=datetime.now().year,
                       methods=methods,
                       errors=errors,
                       form_data={'name': name, 'phone': phone, 'method': method, 'description': description},
                       success_message=None)
    
    # Сохраняем заявку
    request_data = {
        'client_name': name,
        'phone': phone,
        'interested_method': method,
        'problem_description': description
    }
    save_request(request_data)
    
    # Перенаправляем на страницу с сообщением об успехе
    from bottle import template
    methods = get_novelties_data()
    return template('new',
                   title='Актуальные новинки',
                   year=datetime.now().year,
                   methods=methods,
                   errors={},
                   form_data={},
                   success_message='✅ Заявка успешно отправлена! Наш детектив свяжется с вами в ближайшее время.')