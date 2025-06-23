<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>Trainingsauswahl</title>
  <link rel="stylesheet" href="{{css}}">
</head>

<body>
  <button id="darkToggle" class="dark-toggle-btn">🌙</button>
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

  <div class="container">
    <h1>Wähle dein Training</h1>

    <div class="trainingswahl">
      <a href="technisches-training" class="trainings-button">
        <img src="/bilder/Jap.png" alt="Techniktraining">
        <span>Technisches Boxtraining</span>
      </a>
        
      <a href="krafttraining" class="trainings-button">
        <img src="/bilder/Kachel-bild1.jpg" alt="Krafttraining">
        <span>Boxspezifisches Krafttraining</span>
      </a>

      <a href="Cardiotraining" class="trainings-button">
        <img src="/bilder/Kachel-bild2.jpg" alt="Krafttraining">
        <span>Boxspezifisches Cardiotraining</span>
      </a>
    </div>
  </div>
  <script>
  const btn = document.getElementById('darkToggle');
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
</body>
</html>