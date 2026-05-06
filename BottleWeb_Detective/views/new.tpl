% rebase('layout', title=title)

<div class="container mt-4">
    <!-- Hero секция -->
    <div class="hero-section text-center py-5 mb-4" style="background: linear-gradient(135deg, #1e466e 0%, #2c3e50 100%); border-radius: 15px;">
        <h1 class="display-4 fw-bold text-white">🕵️ Актуальные новинки</h1>
        <p class="lead text-white-50">Современные методы расследований — на страже вашей безопасности</p>
    </div>

    <!-- Список новинок (методов) -->
    <div class="row mb-5">
        <div class="col-12 text-center mb-4">
            <h2 class="section-title">Новые методики детективной работы</h2>
        </div>

        <!-- Карточка 1 -->
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="service-card h-100">
                <div class="service-photo text-center py-4" style="font-size: 64px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                    🧬
                </div>
                <div class="service-info p-3">
                    <h3 class="service-title">Экспресс-ДНК анализ</h3>
                    <div class="service-price text-success mb-2">📅 Добавлено: 01.04.2025</div>
                    <p class="service-desc">Определение личности по биоматериалу за 24 часа с точностью 99.9%</p>
                    <span class="badge bg-primary">✨ Новинка</span>
                </div>
            </div>
        </div>

        <!-- Карточка 2 -->
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="service-card h-100">
                <div class="service-photo text-center py-4" style="font-size: 64px; background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                    👁️
                </div>
                <div class="service-info p-3">
                    <h3 class="service-title">Нейросетевое распознавание лиц</h3>
                    <div class="service-price text-success mb-2">📅 Добавлено: 28.03.2025</div>
                    <p class="service-desc">Идентификация подозреваемых в толпе через камеры видеонаблюдения</p>
                    <span class="badge bg-primary">✨ Новинка</span>
                </div>
            </div>
        </div>

        <!-- Карточка 3 -->
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="service-card h-100">
                <div class="service-photo text-center py-4" style="font-size: 64px; background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
                    🚁
                </div>
                <div class="service-info p-3">
                    <h3 class="service-title">Аэрофотосъёмка с дронов</h3>
                    <div class="service-price text-success mb-2">📅 Добавлено: 25.03.2025</div>
                    <p class="service-desc">Обследование местности и скрытое наблюдение с воздуха</p>
                    <span class="badge bg-primary">✨ Новинка</span>
                </div>
            </div>
        </div>

        <!-- Карточка 4 -->
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="service-card h-100">
                <div class="service-photo text-center py-4" style="font-size: 64px; background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);">
                    🤖
                </div>
                <div class="service-info p-3">
                    <h3 class="service-title">ИИ-анализ финансовых документов</h3>
                    <div class="service-price text-success mb-2">📅 Добавлено: 20.03.2025</div>
                    <p class="service-desc">Выявление хищений и финансовых махинаций с помощью ИИ</p>
                    <span class="badge bg-primary">✨ Новинка</span>
                </div>
            </div>
        </div>

        <!-- Карточка 5 -->
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="service-card h-100">
                <div class="service-photo text-center py-4" style="font-size: 64px; background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);">
                    💻
                </div>
                <div class="service-info p-3">
                    <h3 class="service-title">Цифровая криминалистика</h3>
                    <div class="service-price text-success mb-2">📅 Добавлено: 15.03.2025</div>
                    <p class="service-desc">Восстановление удалённых данных и анализ цифровых следов</p>
                    <span class="badge bg-primary">✨ Новинка</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Форма заявки на расследование -->
    <div class="row mt-5">
        <div class="col-12">
            <div class="contact-info p-4" style="background: #f8f9fa; border-radius: 15px; box-shadow: 0 5px 20px rgba(0,0,0,0.1);">
                <h2 class="text-center mb-4">📋 Хотите начать дело?</h2>
                <p class="text-center text-muted mb-4">Оставьте заявку, и наш детектив свяжется с вами в течение часа</p>
                
                <form method="post" action="/submit_request">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label">Ваше имя *</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="phone" class="form-label">Телефон *</label>
                            <input type="tel" class="form-control" id="phone" name="phone" 
                                   placeholder="+7 (999) 123-45-67" required>
                            <small class="text-muted">10-15 цифр, можно использовать +, -, пробелы</small>
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="method" class="form-label">Какая новинка вас заинтересовала? *</label>
                        <select class="form-control" id="method" name="method" required>
                            <option value="">-- Выберите --</option>
                            <option>Экспресс-ДНК анализ</option>
                            <option>Нейросетевое распознавание лиц</option>
                            <option>Аэрофотосъёмка с дронов</option>
                            <option>ИИ-анализ финансовых документов</option>
                            <option>Цифровая криминалистика</option>
                        </select>
                    </div>
                    
                    <div class="mb-3">
                        <label for="description" class="form-label">Опишите вашу ситуацию *</label>
                        <textarea class="form-control" id="description" name="description" 
                                  rows="4" placeholder="Кратко изложите суть дела..." required></textarea>
                    </div>
                    
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary btn-lg px-5">
                            🚀 Начать расследование
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

