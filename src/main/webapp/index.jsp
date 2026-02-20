<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Geliştirici Portföyü</title>
    
    <style>
        /* CSS Değişkenleri */
        :root {
            --bg-color: #f8f9fa;
            --text-color: #212529;
            --primary-color: #0d6efd;
            --card-bg: #ffffff;
            --shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        [data-theme="dark"] {
            --bg-color: #121212;
            --text-color: #e0e0e0;
            --primary-color: #6ea8fe;
            --card-bg: #1e1e1e;
            --shadow: 0 4px 6px rgba(0,0,0,0.5);
        }

        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            margin: 0;
            padding: 0;
            line-height: 1.6;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 5%;
            background-color: var(--card-bg);
            box-shadow: var(--shadow);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary-color);
            text-decoration: none;
        }

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

        /* --- SENİN GÖREVİN: HERO SECTION FLEX DÜZENİ --- */
        .hero {
            display: flex; /* Issue gereği Flexbox eklendi */
            align-items: center;
            justify-content: space-between;
            gap: 2rem;
            padding: 4rem 0;
        }

        .hero-content {
            flex: 1;
        }

        /* --- SENİN GÖREVİN: AVATAR TASARIMI --- */
        .hero-avatar {
            width: 280px;
            height: 280px;
            border-radius: 50%; /* Yuvarlak tasarım [cite: 142] */
            object-fit: cover;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2); /* Modern gölge [cite: 142] */
            border: 4px solid var(--primary-color);
        }

        /* --- SENİN GÖREVİN: RESPONSIVE (MOBİL) AYAR --- */
        @media (max-width: 768px) {
            .hero {
                flex-direction: column-reverse; /* Mobilde alt alta sıralama */
                text-align: center;
            }
            .hero-avatar {
                width: 200px;
                height: 200px;
            }
        }

        main {
            padding: 2rem 5%;
            max-width: 1100px;
            margin: 0 auto;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .card {
            background-color: var(--card-bg);
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: var(--shadow);
            transition: transform 0.3s;
        }

        .card:hover { transform: translateY(-5px); }
        .card h3 { margin-top: 0; color: var(--primary-color); }
        footer { text-align: center; padding: 2rem; font-size: 0.9rem; opacity: 0.8; }
    </style>
</head>
<body>

    <header>
        <a href="#" class="logo">DevPortföy</a>
        <button id="themeToggle">Karanlık Moda Geç</button>
    </header>

    <main>
        <section class="hero">
            <div class="hero-content">
                <h1>Merhaba, Ben Bir Geliştiriciyim 👋</h1>
                <p>Kullanıcı odaklı, modern ve performanslı web çözümleri geliştiriyorum. <strong>Flexbox ve Grid</strong> gibi teknolojileri kullanarak projelerime hayat veriyorum.</p>
                <button>Projelerimi Gör</button>
            </div>
            
            <img src="https://ui-avatars.com/api/?name=Developer&size=280&background=0d6efd&color=fff" alt="Avatar" class="hero-avatar">
        </section>

        <section class="grid-container">
            <article class="card">
                <h3>💻 Frontend Yetenekleri</h3>
                <p>Responsive tasarımlar ve modern JavaScript ekosistemi ile etkileşimli arayüzler geliştiriyorum.</p>
            </article>
            <article class="card">
                <h3>⚙️ Backend & API</h3>
                <p>Java ve MySQL kullanarak güvenli, ölçeklenebilir sunucu taraflı mantıklar kurguluyorum.</p>
            </article>
            <article class="card">
                <h3>🚀 Araçlar & DevOps</h3>
                <p>Git, GitHub ve Maven ile profesyonel bir yazılım yaşam döngüsü yönetiyorum.</p>
            </article>
        </section>
    </main>

    <footer>
        <p>&copy; 2026 DevPortföy. Tüm hakları saklıdır.</p>
    </footer>

    <script>
        const toggleBtn = document.getElementById('themeToggle');
        const body = document.body;

        toggleBtn.addEventListener('click', () => {
            const isDark = body.getAttribute('data-theme') === 'dark';
            if (isDark) {
                body.removeAttribute('data-theme');
                toggleBtn.textContent = 'Karanlık Moda Geç';
            } else {
                body.setAttribute('data-theme', 'dark');
                toggleBtn.textContent = 'Aydınlık Moda Geç';
            }
        });
    </script>
</body>
</html>