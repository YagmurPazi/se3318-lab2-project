<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Geliştirici Portföyü</title>
    
    <style>
        /* CSS Değişkenleri (Tema yönetimi için) */
        :root {
            --bg-color: #f8f9fa;
            --text-color: #212529;
            --primary-color: #0d6efd;
            --card-bg: #ffffff;
            --shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        /* Karanlık Mod Renkleri */
        [data-theme="dark"] {
            --bg-color: #121212;
            --text-color: #e0e0e0;
            --primary-color: #6ea8fe;
            --card-bg: #1e1e1e;
            --shadow: 0 4px 6px rgba(0,0,0,0.5);
        }

        /* Temel Sayfa Ayarları */
        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            margin: 0;
            padding: 0;
            line-height: 1.6;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        /* Üst Menü (Flexbox Kullanımı) */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 5%;
            background-color: var(--card-bg);
            box-shadow: var(--shadow);
            position: sticky;
            top: 0;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary-color);
            text-decoration: none;
        }

        /* Buton Tasarımı */
        button {
            padding: 0.5rem 1rem;
            font-size: 1rem;
            cursor: pointer;
            background-color: var(--primary-color);
            color: #fff;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            transition: transform 0.2s, opacity 0.2s;
        }

        button:hover {
            opacity: 0.9;
            transform: scale(1.05);
        }

        /* Ana İçerik Alanı */
        main {
            padding: 2rem 5%;
            max-width: 1000px;
            margin: 0 auto;
        }

        /* Kart Düzeni (CSS Grid Kullanımı) */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        /* Kart Tasarımı */
        .card {
            background-color: var(--card-bg);
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: var(--shadow);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            margin-top: 0;
            color: var(--primary-color);
        }

        /* Alt Bilgi */
        footer {
            text-align: center;
            padding: 2rem;
            font-size: 0.9rem;
            opacity: 0.8;
        }
    </style>
</head>
<body>

    <header>
        <a href="#" class="logo">DevPortföy</a>
        <button id="themeToggle">Karanlık Moda Geç</button>
    </header>

    <main>
        <section class="hero">
            <h1>Merhaba, Ben Bir Geliştiriciyim 👋</h1>
            <p>Bu sayfa sadece basit bir HTML dosyası değil; <strong>Semantik HTML5</strong> etiketleri, <strong>CSS Grid/Flexbox</strong> ile modern bir düzen ve <strong>JavaScript</strong> ile çalışan dinamik bir tema değiştirici içerir.</p>
        </section>

        <section class="grid-container">
            <article class="card">
                <h3>💻 Frontend Yetenekleri</h3>
                <p>Kullanıcı dostu, duyarlı (responsive) ve erişilebilir web arayüzleri tasarlıyorum. HTML, CSS ve modern JavaScript framework'leri ilgi alanım.</p>
            </article>
            <article class="card">
                <h3>⚙️ Backend & API</h3>
                <p>Veritabanı yönetimi, sunucu taraflı mantık ve RESTful API tasarımları ile uygulamanın perde arkasını sağlamlaştırıyorum.</p>
            </article>
            <article class="card">
                <h3>🚀 Araçlar & DevOps</h3>
                <p>Git ile versiyon kontrolü, GitHub üzerinden işbirliği ve projelerin sorunsuz bir şekilde canlıya alınması konularına hakimim.</p>
            </article>
        </section>
    </main>

    <footer>
        <p>&copy; 2026 DevPortföy. Tüm hakları saklıdır.</p>
    </footer>

    <script>
        // DOM elementlerini seç
        const toggleBtn = document.getElementById('themeToggle');
        const body = document.body;

        // Butona tıklandığında temayı değiştir
        toggleBtn.addEventListener('click', () => {
            const isDark = body.getAttribute('data-theme') === 'dark';
            
            if (isDark) {
                // Karanlık moddaysa aydınlığa geç
                body.removeAttribute('data-theme');
                toggleBtn.textContent = 'Karanlık Moda Geç';
            } else {
                // Aydınlık moddaysa karanlığa geç
                body.setAttribute('data-theme', 'dark');
                toggleBtn.textContent = 'Aydınlık Moda Geç';
            }
        });
    </script>
</body>
</html>
