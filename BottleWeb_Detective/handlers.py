"""
Handlers for POST form submissions and data utilities.
"""

from bottle import request, template
import json
import os
import re
from datetime import datetime

DATA_DIR = 'data'
REQUESTS_FILE = os.path.join(DATA_DIR, 'requests.json')
METHODS_FILE = os.path.join(DATA_DIR, 'methods.json')

# Убедимся, что папка data существует
if not os.path.exists(DATA_DIR):
    os.makedirs(DATA_DIR)


def get_novelties_data():
    """Load novelties data from JSON file."""
    default_methods = [
        {"id": 1, "name": "🧬 Экспресс-ДНК анализ", "description": "Определение личности по биоматериалу за 24 часа", "date_added": "2025-04-01"},
        {"id": 2, "name": "👁️ Нейросетевое распознавание лиц", "description": "Идентификация подозреваемых в толпе", "date_added": "2025-03-28"},
        {"id": 3, "name": "🚁 Аэрофотосъёмка с дронов", "description": "Обследование местности с воздуха", "date_added": "2025-03-25"},
        {"id": 4, "name": "🤖 ИИ-анализ финансовых документов", "description": "Выявление финансовых махинаций", "date_added": "2025-03-20"},
        {"id": 5, "name": "💻 Цифровая криминалистика", "description": "Восстановление удалённых данных", "date_added": "2025-03-15"}
    ]
    
    if not os.path.exists(METHODS_FILE):
        with open(METHODS_FILE, 'w', encoding='utf-8') as f:
            json.dump(default_methods, f, ensure_ascii=False, indent=2)
        return default_methods
    
    with open(METHODS_FILE, 'r', encoding='utf-8') as f:
        methods = json.load(f)
        methods.sort(key=lambda x: x['date_added'], reverse=True)
        return methods


def validate_phone(phone):
    """Validate phone number (10-15 digits, allow +, spaces, dashes, brackets)."""
    cleaned = re.sub(r'[\s\(\)\-+]', '', phone)
    return cleaned.isdigit() and 10 <= len(cleaned) <= 15


def save_request(request_data):
    """Save investigation request to JSON file."""
    requests = []
    
    if os.path.exists(REQUESTS_FILE):
        with open(REQUESTS_FILE, 'r', encoding='utf-8') as f:
            requests = json.load(f)
    
    request_data['id'] = len(requests) + 1
    request_data['created_at'] = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    requests.append(request_data)
    
    with open(REQUESTS_FILE, 'w', encoding='utf-8') as f:
        json.dump(requests, f, ensure_ascii=False, indent=2)


def submit_request_handler():
    """Handle investigation request form submission."""
    
    name = request.forms.get('name', '').strip()
    phone = request.forms.get('phone', '').strip()
    method = request.forms.get('method', '').strip()
    description = request.forms.get('description', '').strip()
    
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
    
    # If validation errors, return to form with errors
    if errors:
        return template('new',
                       title='Актуальные новинки',
                       year=datetime.now().year,
                       methods=methods,
                       errors=errors,
                       form_data=form_data,
                       success_message=None)
    
    # Save the request
    request_info = {
        'client_name': name,
        'phone': phone,
        'interested_method': method,
        'problem_description': description
    }
    save_request(request_info)
    
    # Success - return to form with success message
    return template('new',
                   title='Актуальные новинки',
                   year=datetime.now().year,
                   methods=methods,
                   errors={},
                   form_data={},
                   success_message='Заявка успешно отправлена! Наш детектив свяжется с вами в ближайшее время.')