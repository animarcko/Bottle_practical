import unittest
import re
from datetime import datetime

print("Начало файла unittest_novelties.py")

# ========== ФУНКЦИИ ДЛЯ ТЕСТИРОВАНИЯ ==========

def validate_phone(phone):
    """Validate phone number (10-15 digits, allow +, spaces, dashes, brackets)."""
    if not phone:
        return False
    if not isinstance(phone, str):
        phone = str(phone) if phone is not None else ''
    cleaned = re.sub(r'[\s\(\)\-+]', '', phone)
    return cleaned.isdigit() and 10 <= len(cleaned) <= 15


def validate_date(date_string):
    """Validate date in format YYYY-MM-DD."""
    if not date_string:
        return False
    if not isinstance(date_string, str):
        date_string = str(date_string) if date_string is not None else ''
    try:
        datetime.strptime(date_string, '%Y-%m-%d')
        return True
    except ValueError:
        return False


def validate_form_data(name, phone, method, description):
    """Validate complete form data. Returns (is_valid, errors_dict)."""
    errors = {}
    
    if not name or len(name.strip()) < 2:
        errors['name'] = 'Имя должно содержать минимум 2 символа'
    
    if not phone:
        errors['phone'] = 'Телефон обязателен'
    elif not validate_phone(phone):
        errors['phone'] = 'Неверный формат телефона (должно быть 10-15 цифр)'
    
    if not method:
        errors['method'] = 'Выберите метод'
    
    if not description:
        errors['description'] = 'Опишите ситуацию'
    elif len(description.strip()) < 10:
        errors['description'] = 'Описание должно быть минимум 10 символов'
    
    return len(errors) == 0, errors


# ========== ТЕСТЫ ==========

class TestPhoneValidation(unittest.TestCase):
    """Test cases for phone number validation."""
    
    def test_valid_phone_1(self):
        self.assertTrue(validate_phone('+7 (999) 123-45-67'))
    
    def test_valid_phone_2(self):
        self.assertTrue(validate_phone('89123456789'))
    
    def test_valid_phone_3(self):
        self.assertTrue(validate_phone('1234567890'))
    
    def test_valid_phone_4(self):
        self.assertTrue(validate_phone('123456789012345'))
    
    def test_invalid_phone_too_short(self):
        self.assertFalse(validate_phone('123'))
    
    def test_invalid_phone_empty(self):
        self.assertFalse(validate_phone(''))
    
    def test_invalid_phone_letters(self):
        self.assertFalse(validate_phone('abc123'))
    
    def test_invalid_phone_none(self):
        self.assertFalse(validate_phone(None))


class TestDateValidation(unittest.TestCase):
    """Test cases for date validation."""
    
    def test_valid_date_2025_04_01(self):
        self.assertTrue(validate_date('2025-04-01'))
    
    def test_valid_date_leap_year(self):
        self.assertTrue(validate_date('2024-02-29'))
    
    def test_invalid_date_wrong_format(self):
        self.assertFalse(validate_date('01-04-2025'))
    
    def test_invalid_date_wrong_month(self):
        self.assertFalse(validate_date('2025-13-01'))
    
    def test_invalid_date_wrong_day(self):
        self.assertFalse(validate_date('2025-04-32'))
    
    def test_invalid_date_empty(self):
        self.assertFalse(validate_date(''))


class TestFormDataValidation(unittest.TestCase):
    """Test cases for complete form validation."""
    
    def test_valid_form_data(self):
        is_valid, errors = validate_form_data(
            'Иван Петров', '+7 (999) 123-45-67', 'Экспресс-ДНК анализ', 
            'Это достаточно длинное описание проблемы'
        )
        self.assertTrue(is_valid)
        self.assertEqual(len(errors), 0)
    
    def test_missing_name(self):
        is_valid, errors = validate_form_data('', '+79123456789', 'Метод', 'Длинное описание')
        self.assertFalse(is_valid)
        self.assertIn('name', errors)
    
    def test_missing_phone(self):
        is_valid, errors = validate_form_data('Иван', '', 'Метод', 'Длинное описание')
        self.assertFalse(is_valid)
        self.assertIn('phone', errors)
    
    def test_missing_method(self):
        is_valid, errors = validate_form_data('Иван', '+79123456789', '', 'Длинное описание')
        self.assertFalse(is_valid)
        self.assertIn('method', errors)
    
    def test_missing_description(self):
        is_valid, errors = validate_form_data('Иван', '+79123456789', 'Метод', '')
        self.assertFalse(is_valid)
        self.assertIn('description', errors)
    
    def test_short_description(self):
        is_valid, errors = validate_form_data('Иван', '+79123456789', 'Метод', 'Коротко')
        self.assertFalse(is_valid)
        self.assertIn('description', errors)
    
    def test_short_name(self):
        is_valid, errors = validate_form_data('А', '+79123456789', 'Метод', 'Длинное описание')
        self.assertFalse(is_valid)
        self.assertIn('name', errors)


class TestNameValidation(unittest.TestCase):
    """Test cases for name validation."""
    
    def test_valid_names(self):
        """Test valid name formats."""
        from handlers import validate_name
        valid_names = [
            'Иван Петров',
            'Анна-Мария',
            'Джон',
            'О\'Коннор',
            'Екатерина Великая'
        ]
        
        for name in valid_names:
            with self.subTest(name=name):
                is_valid, msg = validate_name(name)
                self.assertTrue(is_valid, f"Name should be valid: {name}")
    
    def test_invalid_names(self):
        """Test invalid name formats."""
        from handlers import validate_name
        invalid_names = [
            'Иван123',
            'Анна@',
            '12345',
            'И#ван',
            'Петр!',
            '  123  '
        ]
        
        for name in invalid_names:
            with self.subTest(name=name):
                is_valid, msg = validate_name(name)
                self.assertFalse(is_valid, f"Name should be invalid: {name}")
    
    def test_name_short(self):
        """Test too short names."""
        from handlers import validate_name
        invalid_names = ['А', ' ', '  ']
        
        for name in invalid_names:
            with self.subTest(name=name):
                is_valid, msg = validate_name(name)
                self.assertFalse(is_valid)


class TestDescriptionValidation(unittest.TestCase):
    """Test cases for description validation."""
    
    def test_valid_descriptions(self):
        """Test valid descriptions."""
        from handlers import validate_description
        valid_descs = [
            'Это нормальное описание моей проблемы с детективом',
            'Я хочу найти своего пропавшего родственника, который ушел из дома три дня назад',
            'Мне нужно проверить бизнес-партнера на благонадёжность'
        ]
        
        for desc in valid_descs:
            with self.subTest(description=desc):
                is_valid, msg = validate_description(desc)
                self.assertTrue(is_valid)
    
    def test_short_descriptions(self):
        """Test too short descriptions."""
        from handlers import validate_description
        invalid_descs = ['Коротко', 'Мало', 'Ок', '']
        
        for desc in invalid_descs:
            with self.subTest(description=desc):
                is_valid, msg = validate_description(desc)
                self.assertFalse(is_valid)
    
    def test_html_injection(self):
        """Test HTML injection attempts."""
        from handlers import validate_description
        malicious_inputs = [
            '<script>alert("hack")</script>',
            '<img src=x onerror=alert(1)>',
            'SELECT * FROM users',
            'DROP TABLE requests',
            'DELETE FROM methods'
        ]
        
        for desc in malicious_inputs:
            with self.subTest(description=desc):
                is_valid, msg = validate_description(desc)
                self.assertFalse(is_valid, f"Should reject: {desc}")
                self.assertIn('недопустимые символы', msg)


class TestPhoneValidationExtended(unittest.TestCase):
    """Extended test cases for phone validation."""
    
    def test_phone_too_long_input(self):
        """Test phone validation with extremely long input."""
        from handlers import validate_phone
        
        # 30+ символов с цифрами и спецсимволами
        long_phone = '+7 (999) 123-45-67 extra text here'
        self.assertFalse(validate_phone(long_phone))
        
        # Только цифры, но слишком много
        too_many_digits = '12345678901234567890'  # 20 цифр
        self.assertFalse(validate_phone(too_many_digits))
    
    def test_phone_special_chars_only(self):
        """Test phone with only special characters."""
        from handlers import validate_phone
        specials = ['+++', '---', '()()', '   ', '+() -']
        
        for special in specials:
            with self.subTest(phone=special):
                self.assertFalse(validate_phone(special))


print("Конец файла, запуск тестов")

if __name__ == '__main__':
    print("Внутри __main__")
    unittest.main(verbosity=2)