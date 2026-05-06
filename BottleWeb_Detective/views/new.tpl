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
        <div class="navbar-nav ms-auto">
            <a class="nav-link" href="/">Главная</a>
            <a class="nav-link" href="/services">Услуги</a>
            <a class="nav-link" href="/employees">Сотрудники</a>
            <a class="nav-link" href="/about">О нас</a>
            <a class="nav-link" href="/contact">Контакты</a>
            <a class="nav-link active" href="/new">Новинки</a>
        </div>
    </div>
</nav>

<!-- Стартовый блок (Hero) в стиле сайта -->
<div class="container-fluid hero-section bg-dark text-white py-5 mb-5">
    <div class="container text-center">
        <h1 class="display-4">Актуальные новинки</h1>
        <p class="lead fs-3">
            Современные методы расследований
        </p>
        <hr class="w-25 mx-auto my-3 bg-white opacity-50">
        <p class="fs-5">На страже вашей безопасности — новые технологии и методики</p>
    </div>
</div>

<div class="container">
    <!-- Список новинок -->
    <div class="mt-5 pt-3">
        <h2 class="text-center mb-5">Новые методики детективной работы</h2>

        <div class="row g-4">
            % for method in methods:
            <div class="col-md-6 col-lg-4">
                <div class="card service-card h-100 shadow-sm border-0 rounded-4">
                    <div class="card-body p-4">
                        <div class="text-center mb-3" style="font-size: 48px;">
                            {{method.get('icon', '🔍')}}
                        </div>
                        <h5 class="card-title fw-bold text-center">{{method['name']}}</h5>
                        <div class="text-success text-center mb-2 small">
                            📅 Добавлено: {{method['date_added']}}
                        </div>
                        <p class="card-text mt-3">
                            {{method['description']}}
                        </p>
                        <div class="text-center mt-3">
                            <span class="badge bg-primary">✨ Новинка</span>
                        </div>
                    </div>
                </div>
            </div>
            % end
        </div>
    </div>

    <!-- Форма заявки -->
    <div class="row mt-5 pt-4 mb-5">
        <div class="col-md-10 mx-auto">
            <div class="contact-info p-4 p-md-5 rounded-4 shadow-sm text-center bg-primary bg-opacity-10 border border-primary border-opacity-25">
                <h3 class="mb-4">📋 Хотите начать дело?</h3>
                <p class="mb-4">
                    Оставьте заявку, и наш детектив свяжется с вами в течение часа
                </p>
                
                % if success_message:
                <div class="alert alert-success mb-4" role="alert">
                    {{success_message}}
                </div>
                % end
                
                <form method="post" action="/submit_request" class="text-start">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label fw-bold">Ваше имя *</label>
                            <input type="text" class="form-control" id="name" name="name" 
                                   value="{{form_data.get('name', '')}}"
                                   placeholder="Иван Петров">
                            % if errors.get('name'):
                            <div class="text-danger mt-1 small">{{errors['name']}}</div>
                            % end
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="phone" class="form-label fw-bold">Телефон *</label>
                            <input type="tel" class="form-control" id="phone" name="phone" 
                                   placeholder="+7 (921) 123-45-67"
                                   value="{{form_data.get('phone', '')}}">
                            <small class="text-muted">10-15 цифр, можно использовать +, -, пробелы, скобки</small>
                            % if errors.get('phone'):
                            <div class="text-danger mt-1 small">{{errors['phone']}}</div>
                            % end
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="method" class="form-label fw-bold">Какая новинка вас заинтересовала? *</label>
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
                        <div class="text-danger mt-1 small">{{errors['method']}}</div>
                        % end
                    </div>
                    
                    <div class="mb-4">
                        <label for="description" class="form-label fw-bold">Опишите вашу ситуацию *</label>
                        <textarea class="form-control" id="description" name="description" 
                                  rows="4" placeholder="Кратко изложите суть дела...">{{form_data.get('description', '')}}</textarea>
                        <small class="text-muted">Минимум 10 символов</small>
                        % if errors.get('description'):
                        <div class="text-danger mt-1 small">{{errors['description']}}</div>
                        % end
                    </div>
                    
                    <div class="d-flex flex-wrap justify-content-center gap-3 mt-4">
                        <button type="submit" class="btn btn-primary btn-hover-effect btn-lg px-5">
                            🚀 Начать расследование
                        </button>
                    </div>
                </form>
                
                <p class="mt-4 text-muted small">* Поля обязательные для заполнения</p>
            </div>
        </div>
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