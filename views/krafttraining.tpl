<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Krafttraining</title>
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

      <section class="dropdown-section">
        <h2>Zuhause</h2>

      
    <button class="dropdown-btn">Liegestütze</button>
        <div class="dropdown-content">
          <p>{{data["Liegestütze"]}}</p>
          <img src="bilder/Liegestütze.jpg" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Kniebeugen</button>
        <div class="dropdown-content">
          <p>{{data["Kniebeugen"]}}.</p>
          <img src="bilder/Kniebeugen.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Trizeps drücken am Bett/Suhl</button>
        <div class="dropdown-content">
          <p>{{data["Trizeps drücken am Bett/Stuhl"]}}.</p>
          <img src="bilder/Trizepsdrücken.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Situps</button>
        <div class="dropdown-content">
          <p>{{data["Situps"]}}.</p>
          <img src="bilder/Situps.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Crunches</button>
        <div class="dropdown-content">
          <p>{{data["Crunches"]}}</p>
          <img src="bilder/Crunches.png" alt="Burpees" class="übungsbild">
        </div>

  </section>
      

      <section class="motivation-card">
        <h3>💡 Motivation</h3>
        <p id="motivations-text">{{motivation}}</p>
      </section>

   <section class="dropdown-section">
        <h2>Fitnessstudio</h2>

      
    <button class="dropdown-btn">Bankdrücken</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}</p>
          <img src="bilder/Bankdrücken.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Butterfly</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}.</p>
          <img src="bilder/Butterfly.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Schulterdrücken (Arnold Press)</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}.</p>
          <img src="bilder/Schulterdrücken.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Seitheben</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}.</p>
          <img src="bilder/Seitheben.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Kreuzheben</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}</p>
          <img src="bilder/Kreuzheben.png" alt="Burpees" class="übungsbild">
        </div>


      <button class="dropdown-btn">Rudern</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}</p>
          <img src="bilder/Rudern.png" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Ausfallschritte mit Hanteln</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}</p>
          <img src="bilder/Ausfallschritte mit Hanteln.png" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Beinstrecker</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}</p>
          <img src="bilder/Beinstrecker.png" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Nackenheben</button>
        <div class="dropdown-content">
          <p>{{data["Bankdrücken"]}}</p>
          <img src="bilder/Nackenheben.png" alt="Burpees" class="übungsbild">
        </div>

  </section>

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