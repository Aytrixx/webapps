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
          <img src="/bilder/Webshop Logo.png" alt="Boxfit Logo" class="Logo">
        </a>
        <ul class="nav-rechts">
          
          <li><a href="kontakt">Kontakt</a></li>
          <li><a href="Tabata Uhr">Tabata Uhr</a></li>

        </ul>
      </div>
    </header>

    <div class="tabata-wrapper">
        <div class="tabata-box">
          <div id="timer" class="tabata-timer">02:00</div>
          <button class="tabata-button" onclick="startTimer()">Start</button>
          <button class="tabata-button" onclick="resetTimer()">Abbrechen</button>
        </div>
      </div>

      <script>
        let countdown;
        let timeLeft = 120;
        
        function updateDisplay() {
          const minutes = Math.floor(timeLeft / 60);
          const seconds = timeLeft % 60;
          document.getElementById('timer').textContent =
            `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
        }
        
        function startTimer() {
            if (timeLeft <= 0) timeLeft = 120;
            clearInterval(countdown);
            countdown = setInterval(() => {
                if (timeLeft > 0) {
                    timeLeft--;
                    updateDisplay();
                } else {
                clearInterval(countdown);
                alert("Fertig!");
                }
            }, 1000);
        }
        
        function resetTimer() {
            clearInterval(countdown);
            timeLeft = 120;
            updateDisplay();
        }
        
        document.addEventListener("DOMContentLoaded", updateDisplay);
        </script>
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
