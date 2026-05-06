<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Детективное агентство «Тайна» — Актуальные новинки</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/content/site.css" rel="stylesheet">
</head>
<body>

<!-- Навигация -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="/">Детективное агентство «Тайна»</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="/">Главная</a>
                <a class="nav-link" href="/services">Услуги</a>
                <a class="nav-link" href="/team">Сотрудники</a>
                <a class="nav-link" href="/about">О нас</a>
                <a class="nav-link" href="/contact">Контакты</a>
                <a class="nav-link active" href="/new">📰 Новинки</a>
            </div>
        </div>
    </div>
</nav>

<!-- Основной контент -->
<div class="container mt-4">
    <!-- Hero секция -->
    <div class="novelties-hero">
        <h1>🕵️ Актуальные новинки</h1>
        <p>Современные методы расследований — на страже вашей безопасности</p>
    </div>

    <!-- Список новинок -->
    <div class="text-center mb-4">
        <h2 class="novelties-section-title">Новые методики детективной работы</h2>
    </div>
    
    <div class="row">
        % for method in methods:
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="novelty-card">
                <div class="novelty-icon">
                    {{method.get('icon', '🔍')}}
                </div>
                <div class="p-3">
                    <h3 class="novelty-title">{{method['name']}}</h3>
                    <div class="novelty-date">📅 Добавлено: {{method['date_added']}}</div>
                    <p class="novelty-description">{{method['description']}}</p>
                    <span class="badge bg-primary">✨ Новинка</span>
                </div>
            </div>
        </div>
        % end
    </div>

    <!-- Форма заявки -->
    <div class="request-form-wrapper">
        <h2 class="text-center mb-4">📋 Хотите начать дело?</h2>
        <p class="text-center text-muted mb-4">Оставьте заявку, и наш детектив свяжется с вами в течение часа</p>
        
        % if success_message:
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{success_message}}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        % end
        
        <form method="post" action="/submit_request">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="name" class="form-label">Ваше имя *</label>
                    <input type="text" class="form-control" id="name" name="name" 
                           value="{{form_data.get('name', '')}}"
                           placeholder="Иван Петров">
                    % if errors.get('name'):
                    <div class="text-danger mt-1">{{errors['name']}}</div>
                    % end
                </div>
                <div class="col-md-6 mb-3">
                    <label for="phone" class="form-label">Телефон *</label>
                    <input type="tel" class="form-control" id="phone" name="phone" 
                           placeholder="+7 (999) 123-45-67"
                           value="{{form_data.get('phone', '')}}">
                    <small class="text-muted">10-15 цифр, можно использовать +, -, пробелы, скобки</small>
                    % if errors.get('phone'):
                    <div class="text-danger mt-1">{{errors['phone']}}</div>
                    % end
                </div>
            </div>
            
            <div class="mb-3">
                <label for="method" class="form-label">Какая новинка вас заинтересовала? *</label>
                <select class="form-control" id="method" name="method">
                    <option value="">-- Выберите метод --</option>
                    % for method in methods:
                    <option value="{{method['name']}}" 
                            {{'selected' if method['name'] == form_data.get('method', '') else ''}}>
                        {{method['name']}}
                    </option>
                    % end
                </select>
                % if errors.get('method'):
                <div class="text-danger mt-1">{{errors['method']}}</div>
                % end
            </div>
            
            <div class="mb-3">
                <label for="description" class="form-label">Опишите вашу ситуацию *</label>
                <textarea class="form-control" id="description" name="description" 
                          rows="4" placeholder="Кратко изложите суть дела...">{{form_data.get('description', '')}}</textarea>
                <small class="text-muted">Минимум 10 символов</small>
                % if errors.get('description'):
                <div class="text-danger mt-1">{{errors['description']}}</div>
                % end
            </div>
            
            <div class="text-center">
                <button type="submit" class="btn btn-submit">
                    🚀 Начать расследование
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Футер -->
<footer class="footer py-4 mt-4">
    <div class="container text-center">
        <p class="mb-0 text-muted">© 2025 Детективное агентство «Тайна» — Ваша уверенность под защитой.</p>
        <p class="small text-muted mt-2">Все материалы сайта носят информационный характер и не являются публичной офертой.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>