<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>technisches-training</title>
    <link rel="stylesheet" href="{{css}}">   
</head>

<body>
<button id="dunkelmodus" class="dark-toggle-btn">🌙</button>
    <header class="site-header">
        <div class="Navigation">
          <a href="/">
            <img src="/bilder/Webshop Logo.png" alt="Boxfit Logo" class="Logo">
          </a>
          <ul class="nav-rechts">
            
            <li><a href="kontakt">Kontakt</a></li>
            <li><a href="Tabata Uhr">Tabata Uhr</a></li>
          </ul>
        </div>
      </header>

      <section class="dropdown-section">
        <h2>Grundlagen</h2>
      
        <button class="dropdown-btn">Beinstellung</button>
        <div class="dropdown-content">
        <p>{{data["Beinstellung"]}}</p>
        <img src="/bilder/Beinstellung.jpg" alt="Burpees" class="übungsbild">        
        </div>

        <button class="dropdown-btn">Die Deckung</button>
        <div class="dropdown-content">
          <p>{{data["Deckung"]}}</p>
          <img src="/bilder/Die Deckung.jpg" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Der Jab</button>
        <div class="dropdown-content">
          <p>{{data["Jab"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
        <source src="/videos/Der Jab.mp4" type="video/mp4">
        </video>
        </div>

        <button class="dropdown-btn">Der Cross</button>
        <div class="dropdown-content">
        <p>{{ data["Cross"] }}</p>
        <video controls class="übungsvideo" width="320" height="180">
        <source src="/videos/Der Cross.mp4" type="video/mp4">
        </video>
        </div>



        <button class="dropdown-btn">Bewegung mit Jab & Deckung</button>
        <div class="dropdown-content">
          <p>{{data["Bewegung mit Jab & Deckung"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
        <source src="/videos/Bewegen mit Jab & Deckung.mp4" type="video/mp4">
        </video>
        </div>

        
        <button class="dropdown-btn">Bewegen mit Jab, Cross und Deckung</button>
        <div class="dropdown-content">
          <p>{{data["Bewegung mit Jab, Cross und Deckung"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
        <source src="/videos/Bewegen mit Jab, Cross und Deckung.mp4" type="video/mp4">
        </video>
        </div>
  </section>
      
  <section class="motivation-card">
        <h3>💡 Motivation</h3>
        <p id="motivations-text">{{motivation}}</p>
  </section>

      <section class="dropdown-section">
        <h2>Schlagtraining</h2>

      
    <button class="dropdown-btn">Jab und Cross</button>
        <div class="dropdown-content">
          <p>{{data["Jab und Cross"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Jab und Cross.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Linker und rechter Aufwärtshaken</button>
        <div class="dropdown-content">
          <p>{{data["Linker und rechter Aufwärtshaken"]}}.</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Linker und rechter Aufwärtshaken.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Linker und rechter Seitwärtshaken</button>
        <div class="dropdown-content">
          <p>{{data["Linker und rechter Seitwärtshaken"]}}.</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Linker und rechter Seitwärtshaken.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Leberhaken</button>
        <div class="dropdown-content">
          <p>{{data["Leberhaken"]}}.</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Leberhaken.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Der zweite Angriff</button>
        <div class="dropdown-content">
          <p>{{data["Der zweite Angriff"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Der zweite Angriff.mp4" type="video/mp4">
        </video>
        </div>

  </section>

  <section class="dropdown-section">
        <h2>Oberkörperarbeit</h2>

      
    <button class="dropdown-btn">Oberkörperarbeit beim Jab</button>
        <div class="dropdown-content">
          <p>{{data["Oberkörperarbeit beim Jab"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Oberkörperarbeit beim Jab.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Oberkörperarbeit beim Cross</button>
        <div class="dropdown-content">
          <p>{{data["Oberkörperarbeit beim Cross"]}}.</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Oberkörperarbeit beim Cross.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Oberkörperarbeit links rechts</button>
        <div class="dropdown-content">
          <p>{{data["Oberkörperarbeit links rechts"]}}.</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Oberkörperarbeit links rechts.mp4" type="video/mp4">
        </video>
        </div>

    <button class="dropdown-btn">Oberkörperarbeit oben/unten</button>
        <div class="dropdown-content">
          <p>{{data["Oberkörperarbeit beim Winkel Wechseln"]}}.</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Oberkörperarbeit obenunten.mp4" type="video/mp4">
        </video>
        </div>
        
    <button class="dropdown-btn">Oberkörperarbeit beim Winkel Wechseln</button>
        <div class="dropdown-content">
          <p>{{data["Oberkörperarbeit beim Winkel Wechseln"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Oberkörperarbeit beim Winkel Wechseln.mp4" type="video/mp4">
        </video>
        </div>


        <button class="dropdown-btn">Feinschliff</button>
        <div class="dropdown-content">
          <p>{{data["Feinschliff"]}}</p>
          <video controls class="übungsvideo" width="320" height="180">
          <source src="/videos/Kombination aus allem.mp4" type="video/mp4">
        </video>
        </div>

</section>

<script>
  const btn = document.getElementById('dunkelmodus');
  const root = document.documentElement;

  
  const saved = localStorage.getItem('theme') || 'light';
  root.setAttribute('data-theme', saved);
  btn.textContent = saved === 'dark' ? '☀️' : '🌙';

  
  btn.addEventListener('click', () => {
    const next = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
    root.setAttribute('data-theme', next);
    localStorage.setItem('theme', next);
    btn.textContent = next === 'dark' ? '☀️' : '🌙';
  });
</script>

  <script>
      document.addEventListener('DOMContentLoaded', function () {
        const buttons = document.querySelectorAll('.dropdown-btn');
        buttons.forEach(button => {
          button.addEventListener('click', () => {
          const content = button.nextElementSibling;
          if (content.style.display === 'block') {
          content.style.display = 'none';
          } else {
          content.style.display = 'block';
          }
        });
      });
    });
</script>
</body>