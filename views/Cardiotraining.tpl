<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Cardio Training</title>
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
        <h2>Cardiotraining</h2>

      
    <button class="dropdown-btn">Grundlagenausdauer (aerob) (nur Jab)</button>
        <div class="dropdown-content">
          <p>{{data["Grundlagenausdauer (aerob)"]}}</p>
          <img src="bilder/Grundausdauer Joggen.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Rundenausdauer (800m Läufe) (aerob/anaerobe Schwelle)</button>
        <div class="dropdown-content">
          <p>{{data["Rundenausdauer (800m Läufe) (aerob/anaerobe Schwelle)"]}}.</p>
          <img src="bilder/Rundenausdauer.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Kurzzeit/Explosivausdauer (100m Sprints) (anaerob)</button>
        <div class="dropdown-content">
          <p>{{data["Kurzzeit/Explosivausdauer (100m Sprints) (anaerob)"]}}.</p>
          <img src="bilder/kurzzeitausdauer.png" alt="Burpees" class="übungsbild">
        </div>

    <button class="dropdown-btn">Seilspringen</button>
        <div class="dropdown-content">
          <p>{{data["Seilspringen"]}}.</p>
          <img src="bilder/Seilspringen.png" alt="Burpees" class="übungsbild">
        </div>
        
    <button class="dropdown-btn">Freies Schattenboxen</button>
        <div class="dropdown-content">
          <p>{{data["Freies Schattenboxen"]}}</p>
          <img src="bilder/Schattenboxen.png" alt="Burpees" class="übungsbild">
        </div>

  </section>
      
      <section class="motivation-card">
        <h3>💡 Motivation</h3><p id="motivations-text">{{motivation}}</p>      
      </section>

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