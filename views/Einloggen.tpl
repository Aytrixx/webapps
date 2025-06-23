<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="{{css}}">
</head>
<body>
  <div class="login-box">
    <a  href="/">
        <img src="/bilder/Webshop Logo.png" alt="Logo" class="logo">
    </a>
    <h2>Anmelden</h2>
    <p>Wähle aus, wie du dich Anmelden möchtest</p>

    <form action="/login" method="post">
        <input type="email" name="email" placeholder="E-Mail-Adresse" required>
        <button type="submit" class="secondary-btn">Weiter</button>
        <p class="toggle-text">Noch keinen Account? <a href="#" onclick="toggleRegister(); return false;">Registrieren</a></p>
      </form>
      
      <div id="register-box" style="display: none;">
        <h3>Registrieren</h3>
        <input type="text" placeholder="Vorname" required>
        <input type="text" placeholder="Nachname" required>
        <input type="email" placeholder="E-Mail" required>
        <input type="password" placeholder="Passwort erstellen" required>
        <button>Registrieren</button>
      </div>

  </div>

<script>
    function toggleRegister() {
      const box = document.getElementById("register-box");
      box.style.display = box.style.display === "none" ? "block" : "none";
    }
  </script>

  
</body>
</html>