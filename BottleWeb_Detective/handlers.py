"""
Handlers for POST form submissions and data utilities.
"""

from bottle import request, template
import json
import os
import re
from datetime import datetime

# Файлы в корне проекта
METHODS_FILE = 'methods.json'
REQUESTS_FILE = 'requests.json'


def get_novelties_data():
    """Load novelties data from JSON file."""
    if not os.path.exists(METHODS_FILE):
        return []
    
    with open(METHODS_FILE, 'r', encoding='utf-8') as f:
        methods = json.load(f)
        methods.sort(key=lambda x: x['date_added'], reverse=True)
        return methods


def save_request(request_data):
    """Save investigation request to JSON file with UTF-8 encoding."""
    requests = []
    
    # Если файл существует и не пустой
    if os.path.exists(REQUESTS_FILE):
        try:
            # Проверяем, что файл не пустой
            if os.path.getsize(REQUESTS_FILE) > 0:
                with open(REQUESTS_FILE, 'r', encoding='utf-8') as f:
                    requests = json.load(f)
            else:
                # Файл пустой, начинаем с пустого списка
                requests = []
        except json.JSONDecodeError:
            # Если файл повреждён, начинаем заново
            print("⚠️ Файл requests.json повреждён, создаём новый")
            requests = []
    
    # Добавляем новую заявку
    request_data['id'] = len(requests) + 1
    request_data['created_at'] = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    requests.append(request_data)
    
    # Сохраняем с ensure_ascii=False для корректной записи русских букв
    with open(REQUESTS_FILE, 'w', encoding='utf-8') as f:
        json.dump(requests, f, ensure_ascii=False, indent=2)
    
    print(f"✅ Заявка сохранена в {REQUESTS_FILE}")


def validate_phone(phone):
    """Validate phone number (10-15 digits, allow +, spaces, dashes, brackets)."""
    cleaned = re.sub(r'[\s\(\)\-+]', '', phone)
    return cleaned.isdigit() and 10 <= len(cleaned) <= 15


def submit_request_handler():
    """Handle investigation request form submission."""
    
    # Используем getunicode для правильной работы с русскими буквами
    name = request.forms.getunicode('name', '').strip()
    phone = request.forms.getunicode('phone', '').strip()
    method = request.forms.getunicode('method', '').strip()
    description = request.forms.getunicode('description', '').strip()
    
    errors = {}
    form_data = {
        'name': name,
        'phone': phone,
        'method': method,
        'description': description
    }
    
    # Validation
    if not name:
        errors['name'] = 'Пожалуйста, укажите ваше имя'
    elif len(name) < 2:
        errors['name'] = 'Имя должно содержать минимум 2 символа'
    
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
    
    # Get methods data for template
    methods = get_novelties_data()
    
    # If validation errors, return page with errors
    if errors:
        return template('new', 
                       title='Актуальные новинки',
                       year=datetime.now().year,
                       methods=methods,
                       errors=errors,
                       form_data=form_data,
                       success_message=None)
    
    # Сохраняем заявку
    request_info = {
        'client_name': name,
        'phone': phone,
        'interested_method': method,
        'problem_description': description
    }
    save_request(request_info)
    
    # Success - return page with success message
    return template('new',
                   title='Актуальные новинки',
                   year=datetime.now().year,
                   methods=methods,
                   errors={},
                   form_data={},
                   success_message='✅ Заявка успешно отправлена! Наш детектив свяжется с вами в ближайшее время.')