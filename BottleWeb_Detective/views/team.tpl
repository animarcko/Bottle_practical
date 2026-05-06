<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Детективное агентство «Тайна»</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/content/site.css" rel="stylesheet">
</head>
<body>
    <!-- навигация -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Детективное агентство «Тайна»</a>
            <div class="navbar-nav ms-auto">
                    <a class="nav-link" href="/">Главная</a>
                    <a class="nav-link" href="/services">Услуги</a>
                    <a class="nav-link" href="/employees">Сотрудники</a>
                    <a class="nav-link" href="/about">О нас</a>
                    <a class="nav-link" href="/contact">Контакты</a>
                    <a class="nav-link active" href="/new">Новинки</a>  <!-- новая страница -->
            </div>
        </div>
    </nav>

    <!-- шапка -->
    <div class="container-fluid hero-section bg-dark text-white py-5 mb-5">
        <div class="container text-center">
            <h1 class="display-4">Наши сотрудники</h1>
        </div>
    </div>

    <div class="container">
        <!-- Карточки сотрудников -->
        <h2 class="section-title">Ключевые сотрудники</h2>
        
        <div class="row">
            <!-- Андреева Екатерина -->
            <div class="col-md-4">
                <div class="employee-card">
                    <div class="employee-photo">
                        <img src="/static/img/kate.jpg" alt="Андреева Екатерина" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="employee-info">
                        <div class="employee-name">Андреева Екатерина</div>
                        <div class="employee-position">Ведущий детектив</div>
                        <div class="employee-department">Отдел расследований</div>
                        <p>Опыт: 8 лет</p>
                        <span class="employee-badge">Руководитель</span>
                    </div>
                </div>
            </div>
            
            <!-- Скулябина Маргарита -->
            <div class="col-md-4">
                <div class="employee-card">
                    <div class="employee-photo">
                        <img src="/static/img/rita.jpg" alt="Скулябина Маргарита" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="employee-info">
                        <div class="employee-name">Скулябина Маргарита</div>
                        <div class="employee-position">Детектив-аналитик</div>
                        <div class="employee-department">Аналитический отдел</div>
                        <p>Опыт: 5 лет</p>
                        <span class="employee-badge">Аналитик</span>
                    </div>
                </div>
            </div>
            
            <!-- Пароменкова Ольга -->
            <div class="col-md-4">
                <div class="employee-card">
                    <div class="employee-photo">
                        <img src="/static/img/ola.jpg" alt="Пароменкова Ольга" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="employee-info">
                        <div class="employee-name">Пароменкова Ольга</div>
                        <div class="employee-position">Оперативный сотрудник</div>
                        <div class="employee-department">Наружное наблюдение</div>
                        <p>Опыт: 6 лет</p>
                        <span class="employee-badge">Сотрудник</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Наши достижения -->
        <div class="row mb-5 mt-5">
            <div class="col-12">
                <div class="simple-info-block text-center p-4 bg-light rounded-3">
                    <h4 class="mb-3">Наши достижения</h4>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="achievement-item">
                                <h3 class="text-primary mb-0">1500+</h3>
                                <p class="text-muted">Раскрытых дел</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="achievement-item">
                                <h3 class="text-primary mb-0">98%</h3>
                                <p class="text-muted">Успешных расследований</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="achievement-item">
                                <h3 class="text-primary mb-0">12</h3>
                                <p class="text-muted">Лет на рынке</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- контактный блок -->
        <div class="row mb-5 mt-5">
        <div class="col-md-10 mx-auto">
            <div class="bg-dark text-white p-4 p-md-5 rounded-4 text-center">
                <h3 class="mb-3">Хотите работать с нами?</h3>
                <p class="mb-4 fs-5 opacity-75">
                    Присылайте резюме на почту: ekaterinaandreeva@gmail.com
                </p>
                <div class="d-flex flex-wrap justify-content-center gap-3">
                    <a href="/contact" class="btn btn-primary btn-hover-effect btn-lg px-5">Связаться с нами</a>
                </div>
            </div>
        </div>
    </div>
    </div>

    <!-- футер -->
    <footer>
        <div class="container">
            <p>© {{ year or "2025" }} Детективное агентство «Тайна»</p>
            <p class="small">Все права защищены</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // скрипт
        document.addEventListener('DOMContentLoaded', function() {
            console.log('Страница сотрудников загружена');
        });
    </script>
</body>
</html>