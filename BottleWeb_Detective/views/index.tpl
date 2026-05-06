<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Детективное агентство «Тайна»</title>
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
                    <a class="nav-link active" href="/new">Новинки</a>  <!-- новая страница -->
            </div>
        </div>
    </nav>

<!-- Стартовый блок (Hero) -->
<div class="container-fluid hero-section bg-dark text-white py-5 mb-5">
    <div class="container text-center">
        <h1 class="display-4">Детективное агентство «Тайна»</h1>
        <p class="lead fs-3">
            Надёжно. Конфиденциально. Результативно.
        </p>
        <hr class="w-25 mx-auto my-3 bg-white opacity-50">
        <p class="fs-5">Ваша уверенность в сложных ситуациях — наша главная цель</p>
    </div>
</div>


<div class="container">
    <!-- Блок "О нас" с историей и принципами -->
    <div class="row mb-5">
        <div class="col-lg-8 mx-auto">
           
            <p class="lead text-center">
                Наше бюро детективных услуг работает с 2015 года и специализируется на сборе и анализе информации для частных лиц и организаций.
            </p>
            
            <div class="mt-5">
                <h3 class="border-start border-primary border-4 ps-3 mb-3">Кто мы и зачем существуем</h3>
                <p class="fs-5">
                    В повседневной жизни зачастую нужны точные и достоверные сведения, чтобы принимать важные решения — личные, семейные или бизнес‑ориентированные.  
                    Мы помогаем нашим клиентам разобраться в сложных ситуациях, проверить надёжность партнёров, найти человека или восстановить справедливость.
                </p>
            </div>
        </div>
    </div>

    <div class="container-fluid p-0 mb-5">
        <img src="/static/images/back3.png" alt="Детективное агентство" class="w-100 d-block">
    </div>


    <!-- Наши услуги (карточки) -->
    <div class="mt-5 pt-3">
        <h2 class="text-center mb-5">Наши услуги</h2>

        <div class="row g-4">
            <div class="col-md-6">
                <div class="card service-card h-100 shadow-sm border-0 rounded-4">
                    <div class="card-body p-4">
                        <h5 class="card-title fw-bold">🔍 Поиск и установление местонахождения</h5>
                        <p class="card-text mt-3">
                            Мы быстро и конфиденциально выясняем, где находится человек, с которым вы давно потеряли связь или по другим причинам хотите его найти.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card service-card h-100 shadow-sm border-0 rounded-4">
                    <div class="card-body p-4">
                        <h5 class="card-title fw-bold">🤝 Проверка партнёра</h5>
                        <p class="card-text mt-3">
                            Изучаем биографию, семейное положение, окружение и финансовое положение, чтобы вы могли принимать решения с полным пониманием ситуации.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card service-card h-100 shadow-sm border-0 rounded-4">
                    <div class="card-body p-4">
                        <h5 class="card-title fw-bold">🏢 Проверка контрагентов</h5>
                        <p class="card-text mt-3">
                            Проверяем репутацию, юридическую чистоту и деловую историю компаний и должностных лиц, с которыми вы планируете сотрудничать.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card service-card h-100 shadow-sm border-0 rounded-4">
                    <div class="card-body p-4">
                        <h5 class="card-title fw-bold">🕵️‍♂️ Слежка и наблюдение</h5>
                        <p class="card-text mt-3">
                            Проводим наблюдения в рамках действующего законодательства, чтобы вы получили достоверные данные о поведении интересующего вас человека или группы.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid p-0 mb-5">
        <img src="/static/images/back4.png" alt="Детективное агентство" class="w-100 d-block">
    </div>


    <!-- Принципы работы -->
    <div class="mt-5 pt-4">
        <h2 class="text-center mb-4">Ключевые принципы</h2>
        <div class="row g-4">
            <div class="col-md-6 col-lg-3">
                <div class="principle-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <h5 class="fw-bold text-primary">🔒 Конфиденциальность</h5>
                    <p class="mt-2 mb-0">Все сведения о наших клиентах строго защищены и не передаются третьим лицам.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="principle-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <h5 class="fw-bold text-primary">⚖️ Законность</h5>
                    <p class="mt-2 mb-0">Вся работа проводится в строгом соответствии с действующим законодательством РФ.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="principle-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <h5 class="fw-bold text-primary">🤲 Доверие и честность</h5>
                    <p class="mt-2 mb-0">Мы не обещаем невозможного, но делаем всё, чтобы вы получили результат.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="principle-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <h5 class="fw-bold text-primary">📊 Конфиденциальный результат</h5>
                    <p class="mt-2 mb-0">Вы платите за результат, а не за «ходатайство», и получаете честный отчёт.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Контактная информация и призыв к действию -->
    <div class="row mt-5 pt-4 mb-5">
        <div class="col-md-8 mx-auto">
            <div class="contact-info p-4 p-md-5 rounded-4 shadow-sm text-center bg-primary bg-opacity-10 border border-primary border-opacity-25">
                <h3 class="mb-4">Как с нами связаться</h3>
                <address class="mb-4 fs-5">
                    <strong>📍 Адрес:</strong> г. СПб, Невский проспект, д. 100, офис 15<br>
                    <strong>📞 Телефон:</strong> +7 (921) 123‑45‑67<br>
                    <strong>✉️ Email:</strong> <a href="mailto:info@taena-agency.ru" class="text-decoration-none">info@taena-agency.ru</a>
                </address>
                <p class="mb-4">
                    Свяжитесь с нами, чтобы обсудить вашу ситуацию и понять, какие услуги могут быть вам полезны.
                </p>
                <div class="d-flex flex-wrap justify-content-center gap-3">
                    <a href="/contact" class="btn btn-primary btn-hover-effect btn-lg px-4">Связаться с агентством</a>
                </div>
                <p class="mt-4 text-muted small">Бесплатная консультация по вашему вопросу — позвоните или напишите нам</p>
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
