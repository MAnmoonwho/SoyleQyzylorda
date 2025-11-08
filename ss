<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Soyle Qyzylorda</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background: #f5f5f5;
        color: #333;
        overflow-x: hidden;
    }
    header {
        background: linear-gradient(90deg, #4e73df, #1cc88a);
        color: white;
        padding: 30px 20px;
        text-align: center;
    }
    header h1 {
        margin: 0;
        font-size: 2.5rem;
        animation: slideDown 1s ease forwards;
    }
    nav {
        display: flex;
        justify-content: center;
        background: #2e59d9;
    }
    nav button {
        background: none;
        border: none;
        color: white;
        padding: 15px 20px;
        cursor: pointer;
        font-size: 1rem;
        transition: background 0.3s;
    }
    nav button:hover {
        background: rgba(255,255,255,0.2);
    }
    section {
        max-width: 1000px;
        margin: 40px auto;
        padding: 20px;
        background: white;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        display: none;
        transform: translateX(100%);
        opacity: 0;
        transition: all 0.7s ease;
    }
    section.active {
        display: block;
        transform: translateX(0);
        opacity: 1;
        animation: fadeInUp 1s ease;
    }
    h2 {
        color: #1cc88a;
        opacity: 0;
        transform: translateX(-50px);
    }
    ul li {
        opacity: 0;
        transform: translateX(-30px);
        margin-bottom: 8px;
    }
    footer {
        text-align: center;
        padding: 20px;
        background: #2e59d9;
        color: white;
    }

    /* Анимации */
    @keyframes slideDown {
        0% {opacity: 0; transform: translateY(-50px);}
        100% {opacity: 1; transform: translateY(0);}
    }

    @keyframes fadeInUp {
        0% {opacity: 0; transform: translateY(50px);}
        100% {opacity: 1; transform: translateY(0);}
    }

    @keyframes slideInLeft {
        0% {opacity: 0; transform: translateX(-50px);}
        100% {opacity: 1; transform: translateX(0);}
    }

</style>
</head>
<body>

<header>
    <h1>Soyle Qyzylorda</h1>
    <p>Цифровой город и технологическое будущее Кызылорды</p>
</header>

<nav>
    <button onclick="showSection('smart')">Smart Qyzylorda</button>
    <button onclick="showSection('eqyzylorda')">E-Qyzylorda</button>
    <button onclick="showSection('software')">Software Development</button>
</nav>

<section id="smart" class="active">
    <h2>🏙️ Цифровая инфраструктура города (Smart Qyzylorda)</h2>
    <p>Smart Qyzylorda — это программа по созданию “умного города”, где каждая система соединена в единую технологическую сеть.</p>
    <ul>
        <li><strong>Smart Internet:</strong> 5G и высокоскоростной интернет во всех районах</li>
        <li><strong>Городская Wi-Fi-сеть:</strong> бесплатный доступ в школах, парках, автобусных остановках</li>
        <li><strong>IoT-сенсоры:</strong> датчики для транспорта, освещения, энергопотребления и безопасности</li>
        <li><strong>SmartMap Qyzylorda:</strong> цифровая карта города с движением транспорта, дорог и энергопотреблением</li>
        <li><strong>Qyzylorda Data Hub:</strong> центр сбора и анализа данных города</li>
    </ul>
    <p>Пример: система автоматически регулирует светофоры, снижая пробки, а жители видят актуальные данные в мобильном приложении.</p>
</section>

<section id="eqyzylorda">
    <h2>🧭 Цифровое управление (E-Qyzylorda)</h2>
    <p>E-Qyzylorda переводит городское управление в цифровую среду, делая его прозрачным, быстрым и доступным для всех.</p>
    <ul>
        <li>Онлайн-госуслуги: e-qyzylorda.kz</li>
        <li>Единый чат-бот “SoyleBot” для жалоб и предложений</li>
        <li>Электронный документооборот между школами, акиматом, медициной</li>
        <li>AI-аналитика: прогнозирование трафика, выявление проблемных зон</li>
        <li>Прозрачность бюджета: интерактивная панель расходов города</li>
    </ul>
    <p>Пример: AI обрабатывает обращения жителей и автоматически формирует задания на ремонт или улучшения.</p>
</section>

<section id="software">
    <h2>💻 Вклад в развитие Software Development</h2>
    <p>Кызылорда как центр разработки: TechHub, Soyle Platform, курсы и IT-проекты для города.</p>
    <ul>
        <li>TechHub Qyzylorda: коворкинг, лаборатории, акселератор стартапов</li>
        <li>Soyle Platform: открытая площадка для разработчиков с городскими API</li>
        <li>Обучение и сертификация: Python, Web, AI, Data Science</li>
        <li>Проект “Code Kyzylorda”: бесплатные курсы программирования для школьников</li>
        <li>Городские IT-проекты: MyQyzylorda, E-Business Qyzylorda, AI-аналитика транспорта</li>
    </ul>
    <p>Эффект: рост IT-компаний, новые рабочие места, удержание талантливой молодежи.</p>
</section>

<footer>
    <p>&copy; 2025 Soyle Qyzylorda | Цифровое будущее региона</p>
</footer>

<script>
function showSection(id){
    const sections = document.querySelectorAll('section');
    sections.forEach(sec => {
        sec.classList.remove('active');
        // скрыть элементы для повторной анимации
        sec.querySelectorAll('h2, ul li').forEach(el => {
            el.style.opacity = 0;
            el.style.transform = 'translateX(-50px)';
        });
    });

    const activeSec = document.getElementById(id);
    activeSec.classList.add('active');

    // Анимация заголовков
    const title = activeSec.querySelector('h2');
    title.style.animation = 'slideInLeft 0.8s forwards';

    // Анимация списка с задержкой
    const items = activeSec.querySelectorAll('ul li');
    items.forEach((item, index) => {
        item.style.animation = `slideInLeft 0.6s forwards`;
        item.style.animationDelay = `${0.2 * index}s`;
    });
}
</script>

</body>
</html>
