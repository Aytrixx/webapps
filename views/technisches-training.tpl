<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>technisches-training</title>
    <link rel="stylesheet" href="{{css}}">   
</head>

<body>
    <header class="site-header">
        <div class="Navigation">
          <a href="/">
            <img src="/bilder/Webshop Logo.png" alt="Boxfit Logo" class="Logo">
          </a>
          <ul class="nav-rechts">
            
            <li><a href="#">Kontakt</a></li>
            <li><a href="#">Kalorienzähler</a></li>
            <li><a href="Tabata Uhr">Tabata Uhr</a></li>
            <li><a href="einloggen">Einloggen</a></li>
          </ul>
        </div>
      </header>

      <section class="dropdown-section">
        <h2>Grundlagen</h2>
      
        <button class="dropdown-btn">Beinstellung</button>
        <div class="dropdown-content">
        <p>{{data["Beinstellung"][0]}}</p>
        <img src="{{url('bilder', filepath='Beinstellung.jpg')}}" alt="Beinstellung" class="übungsbild">
        </div>


        <button class="dropdown-btn">Die Deckung</button>
        <div class="dropdown-content">
          <p>Burpees sind eine Ganzkörperübung. 3×20 Wiederholungen empfohlen.</p>
          <img src="burpees.jpg" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Der Jab</button>
        <div class="dropdown-content">
          <p>Burpees sind eine Ganzkörperübung. 3×20 Wiederholungen empfohlen.</p>
          <img src="burpees.jpg" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Der Cross</button>
        <div class="dropdown-content">
          <p>Burpees sind eine Ganzkörperübung. 3×20 Wiederholungen empfohlen.</p>
          <img src="burpees.jpg" alt="Burpees" class="übungsbild">
        </div>

        <button class="dropdown-btn">Bewegung mit Jab & Deckung</button>
        <div class="dropdown-content">
          <p>Burpees sind eine Ganzkörperübung. 3×20 Wiederholungen empfohlen.</p>
          <img src="burpees.jpg" alt="Burpees" class="übungsbild">
        </div>
        
        <button class="dropdown-btn">Bewegen mit Jab, Cross und Deckung</button>
        <div class="dropdown-content">
          <p>Burpees sind eine Ganzkörperübung. 3×20 Wiederholungen empfohlen.</p>
          <img src="burpees.jpg" alt="Burpees" class="übungsbild">
        </div>
  </section>
      
      <section class="dropdown-section">
        <h2>Grundlagen</h2>

      
    <button class="dropdown-btn"> </button>
        <div class="dropdown-content">
          <p>Burpees sind eine Ganzkörperübung. 3×20 Wiederholungen empfohlen.</p>
          <img src="burpees.jpg" alt="Burpees" class="übungsbild">
        </div>


      </section>



      <section class="motivation-card">
        <h3>💡 Motivation</h3>
        <p id="motivations-text">{{motivation}}</p>
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