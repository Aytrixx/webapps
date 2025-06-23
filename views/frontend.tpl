<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Der Boxing Trainer</title>
    <link rel="stylesheet" href="{{css}}">
    </head>

  <body>
    <form action="/" method="get">
    <label for="name">Wie heißt du?</label>
    <input type="text" id="name" name="name" />
    <button type="submit">Absenden</button>
  </form>

  % if name:
    <p>Willkommen, {{name}} zu deinem Boxtraining!</p>
    <p><a href="/krafttraining?name={{name}}">Zum Krafttraining</a></p>
  % end
    <header class="site-header">
      <div class="Navigation">
        <a href="/">
          <img src="/bilder/Webshop Logo.png" alt="Boxfit Logo" class="Logo">        </a>
        <ul class="nav-rechts">
          
          <li><a href="#">Kontakt</a></li>
          <li><a href="#">Kalorienzähler</a></li>
          <li><a href="Tabata Uhr">Tabata Uhr</a></li>
          <li><a href="Einloggen">Einloggen</a></li>
        </ul>
      </div>
    </header>

    <section class="home" id="home">
      <div class="Hauptbereich">
        <h2>Starte dein Boxtraining</h2>
        <p>Boxen, Fitness/Kraft und Ausdauer</p>
        <a href="überbrückung" class="button">Jetzt loslegen</a>
      </div>
    </section>


    <section class="content">
      <h1>Deine Ausrüstung fürs Training</h1>
      <div class="ausruestung">
        <div class="item">
          <img src="/bilder/Boxhandschuhe.jpg" alt="Boxhandschuhe">
          <p>Boxhandschuhe - Schutz und Power für deine Fäuste.</p>
        </div>
        <div class="item">
          <img src="/bilder/Boxbandagen.jpg" alt="Boxbandagen">            <p>Handbandagen - Stabilität fürs Handgelenk.</p>
          </div>
        <div class="item">
          <img src="/bilder/Mundschutz.jpg" alt="Mundschutz">
          <p>Mundschutz – zum Schutz der Zähne, Lippen und des Kiefers.</p>
      </div>
    </section>
    <section id="ueber-uns" class="ueber-uns">
      <h2>Über uns</h2>
      <p>Wir sind Mohamad, Ayman, Samet und Farhan – vier sportbegeisterte Studenten der Universität Bremen. Diese Website entstand im Rahmen eines Projekts und soll dir helfen, dein Boxtraining effektiv zu starten. Unsere Leidenschaft für Sport treibt uns an, Wissen weiterzugeben und Motivation zu schaffen.</p>
  </section>

  </body>
  <footer class="footer">
    <p>&copy; 2025 Boxfit – Studentenprojekt Universität Bremen | <a href="impressum">Impressum</a></p>
  </footer>
</html>