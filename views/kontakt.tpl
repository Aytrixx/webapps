<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Der Boxing Trainer</title>
    <link rel="stylesheet" href="{{css}}">
    </head>

  <body>
   <button id="darkToggle" class="dark-toggle-btn">🌙</button>
    <header class="site-header">
      <div class="Navigation">
        <a href="/">
          <img src="/bilder/Webshop Logo.png" alt="Boxfit Logo" class="Logo">        </a>
        <ul class="nav-rechts">
          
          <li><a href="kontakt">Kontakt</a></li>
          <li><a href="Tabata Uhr">Tabata Uhr</a></li>
          
        </ul>
      </div>
    </header>

    <main class="container">
    <h1>Kontakt</h1>
    <p>Schreib uns direkt per WhatsApp:</p>
    <a href="/kontakt/whatsapp" class="button">WhatsApp Chat starten</a>
  </main>

<button id="openBooking" class="button" style="booking-btn">
      Probetraining buchen
    </button>
  </main>

 
  <div id="bookingModal" class="modal">
    <div class="modal-content">
      <span id="closeBooking" class="modal-close">×</span>
      <iframe
        src="{{calendar_embed_url}}"
        style="border:0"
        width="100%" height="600"
        frameborder="0" scrolling="auto">
      </iframe>
    </div>
  </div>

<script>
  
  const modal       = document.getElementById('bookingModal');
  const openBtn     = document.getElementById('openBooking');
  const closeBtn    = document.getElementById('closeBooking');

  openBtn.addEventListener('click', () => {
    modal.style.display = 'block';
  });

 
  closeBtn.addEventListener('click', () => modal.style.display = 'none');
  window.addEventListener('click', e => {
    if (e.target === modal) modal.style.display = 'none';
  });
</script>









 <script>
    const btn  = document.getElementById('darkToggle');
    const root = document.documentElement;

    // beim Laden: gespeichertes Theme anwenden
    document.addEventListener('DOMContentLoaded', () => {
      const saved = localStorage.getItem('theme') || 'light';
      root.setAttribute('data-theme', saved);
      btn.textContent = saved === 'dark' ? '☀️' : '🌙';
    });

    // Klick-Handler: umschalten & speichern
    btn.addEventListener('click', () => {
      const next = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
      root.setAttribute('data-theme', next);
      localStorage.setItem('theme', next);
      btn.textContent = next === 'dark' ? '☀️' : '🌙';
    });
  </script>

</body>
</html>
