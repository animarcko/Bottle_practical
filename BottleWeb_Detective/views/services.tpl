<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Услуги — Детективное агентство «Тайна»</title>
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
            <h1 class="display-4">Наши услуги</h1>
        </div>
    </div>

    <div class="container">
        <!-- карточки основных услуг -->
        <h2 class="section-title">Основные направления</h2>

        <div class="row">
            <!-- услуга 1: Детективное расследование -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-photo">
                        <img src="/static/img/rassledovanie.jpg" alt="Детективное расследование" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="service-info">
                        <div class="service-title">Детективное расследование</div>
                        <div class="service-price">от 25 000 ₽</div>
                        <div class="service-desc">
                            Полный цикл расследования: сбор фактов, поиск улик, проверка контрагентов, выявление недобросовестности.
                        </div>
                        <span class="service-badge">Лицензия МВД</span>
                    </div>
                </div>
            </div>

            <!-- услуга 2: Наружное наблюдение -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-photo">
                        <img src="/static/img/naruzhnoe_nabludenie.jpg" alt="Наружное наблюдение" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="service-info">
                        <div class="service-title">Наружное наблюдение</div>
                        <div class="service-price">от 18 000 ₽/день</div>
                        <div class="service-desc">
                            Скрытое наблюдение за объектом, фото/видеофиксация, маршруты передвижения, встречи. Абсолютная конфиденциальность.
                        </div>
                        <span class="service-badge">Современное оборудование</span>
                    </div>
                </div>
            </div>

            <!-- услуга 3: Проверка персонала и партнёров -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-photo">
                        <img src="/static/img/proverka_personala.jpg" alt="Проверка персонала" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="service-info">
                        <div class="service-title">Проверка персонала</div>
                        <div class="service-price">от 12 000 ₽</div>
                        <div class="service-desc">
                            Служебное расследование, проверка благонадёжности, выявление хищений, анализ деловой репутации.
                        </div>
                        <span class="service-badge">Безопасность бизнеса</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Вторая линия карточек (доп услуги) -->
        <div class="row mt-2">
            <!-- услуга 4: Аналитическая поддержка -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-photo">
                        <img src="/static/img/analitika.jpg" alt="Проверка персонала" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="service-info">
                        <div class="service-title">Аналитика & OSINT</div>
                        <div class="service-price">от 15 000 ₽</div>
                        <div class="service-desc">
                            Сбор данных из открытых источников, аналитические отчёты, цифровой профиль, мониторинг соцсетей.
                        </div>
                        <span class="service-badge">OSINT-экспертиза</span>
                    </div>
                </div>
            </div>

            <!-- услуга 5: Юридическая помощь -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-photo">
                        <img src="/static/img/pomosch.jpg" alt="Проверка персонала" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="service-info">
                        <div class="service-title">Юридическое сопровождение</div>
                        <div class="service-price">от 10 000 ₽</div>
                        <div class="service-desc">
                            Консультации, досудебное урегулирование, сбор доказательной базы, представление интересов в суде.
                        </div>
                        <span class="service-badge">Опытные адвокаты</span>
                    </div>
                </div>
            </div>

            <!-- услуга 6: Розыск людей -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-photo">
                        <img src="/static/img/wanted.jpg" alt="Проверка персонала" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <div class="service-info">
                        <div class="service-title">Розыск людей</div>
                        <div class="service-price">от 30 000 ₽</div>
                        <div class="service-desc">
                            Поиск должников, пропавших родственников, свидетелей. Работаем по всей РФ и странам СНГ.
                        </div>
                        <span class="service-badge">92% результативность</span>
                    </div>
                </div>
            </div>
        </div>

                <!-- Наши преимущества -->
        <div class="row mt-5 mb-5">
            <div class="col-12">
                <div class="advantages-block p-4 p-md-5 rounded-4" style="background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);">
                    <h3 class="text-center mb-4" style="color: #1a1a2e;">Почему клиенты выбирают нас?</h3>
                    <div class="row g-4 text-center">
                        <div class="col-md-3">
                            <div class="advantage-item p-3">
                                <div class="advantage-icon mb-3" style="font-size: 2.5rem;"></div>
                                <h5 class="fw-bold">Опыт 15+ лет</h5>
                                <p class="text-muted mb-0">На рынке детективных услуг</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="advantage-item p-3">
                                <div class="advantage-icon mb-3" style="font-size: 2.5rem;"></div>
                                <h5 class="fw-bold">Оперативность</h5>
                                <p class="text-muted mb-0">Результат в кратчайшие сроки</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="advantage-item p-3">
                                <div class="advantage-icon mb-3" style="font-size: 2.5rem;"></div>
                                <h5 class="fw-bold">Конфиденциальность</h5>
                                <p class="text-muted mb-0">100% защита данных</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="advantage-item p-3">
                                <div class="advantage-icon mb-3" style="font-size: 2.5rem;"></div>
                                <h5 class="fw-bold">Юридическая чистота</h5>
                                <p class="text-muted mb-0">Работаем строго в рамках закона</p>
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
                <h3 class="mb-3">Нужна консультация или заказ услуги?</h3>
                <p class="mb-4 fs-5 opacity-75">
                    Позвоните нам или оставьте заявку — мы ответим на все вопросы и подберём оптимальный формат работы.
                </p>
                <div class="d-flex flex-wrap justify-content-center gap-3">
                    <a href="/contact" class="btn btn-primary btn-hover-effect btn-lg px-5">Связаться с нами</a>
                </div>
            </div>
        </div>
        

        <!-- обратная связь -->
        <div class="row mt-5">
            <div class="col-md-12">
                <div class="stat-panel">
                    <h4>Как заказать услугу?</h4>
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <p>1. Оставьте заявку по телефону <strong>+7 (495) 555-33-22</strong> или через форму на сайте.<br>
                            2. Заключаем официальный договор — гарантия конфиденциальности.<br>
                            3. Назначаем ведущего детектива, согласовываем план работ.<br>
                            4. Предоставляем отчёт с результатами (фото, видео, документы).<br>
                            <span class="text-primary">*Срочные заказы выполняем в течение 24 часов.</span></p>
                        </div>
                        <div class="col-md-4 text-center">
                            <div class="mt-2">ekaterinaandreeva@gmail.com</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- футер  -->
    <footer>
        <div class="container">
            <p>© <span id="currentYear"></span> Детективное агентство «Тайна»</p>
            <p class="small">Все права защищены. Лицензия на детективную деятельность № 77123456789</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // устанавливаем текущий год в футере
        document.addEventListener('DOMContentLoaded', function() {
            const yearSpan = document.getElementById('currentYear');
            if (yearSpan) {
                yearSpan.textContent = new Date().getFullYear();
            }
            console.log('Страница услуг детективного агентства «Тайна» загружена');
            
            const cards = document.querySelectorAll('.service-card');
            cards.forEach((card, index) => {
                card.addEventListener('click', () => {
                    console.log(`Пользователь кликнул по услуге #${index + 1}`);
                });
            });
        });
    </script>
</body>
</html>