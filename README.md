
# WebApps Projekt (Bottle-Version)

Dies ist eine Webanwendung auf Basis von Bottle.py mit mehreren HTML-Seiten im .tpl-Format (Templates), eingebettetem CSS-Design inklusive Dark/Light-Modus und Trainingsinhalten. Sie richtet sich an Nutzer, die sich interaktiv Trainingspläne anzeigen lassen möchten.

---

## 🔧 Technologien

- Backend: Python 3 mit Bottle-Webframework
- Frontend: HTML (TPL-Templates), CSS, JavaScript
- Persistenter Dark/Light-Mode via localStorage
- Modularisierte Übungstexte via `uebungsliste.py`

---

## 📁 Struktur

- `app.py` – zentrale Bottle-App mit Routensteuerung, dynaischen CSS-Link und Random-Motivation
- `uebungsliste.py` – Wörterbuch mit Trainingsanleitungen (Boxtechniken etc.)
- `.tpl`-Dateien – HTML-Templates für unterschiedliche Trainingsarten und Info-Seiten:
  - `Cardiotraining.tpl`
  - `krafttraining.tpl`
  - `technisches-training.tpl`
  - `kontakt.tpl`, `impressum.tpl`, `überbrückung.tpl`, u.v.m.

---

## 🌗 Dark/Light Mode

- Über einen Button mit der ID `darkToggle` kann zwischen Hell- und Dunkelmodus gewechselt werden.
- Die Wahl wird im Browser über `localStorage` gespeichert.
- Genutzt wird ein CSS-Attribut `data-theme` auf dem `<html>`-Element.
- Beispiel (JS-Auszug):

```javascript
const btn = document.getElementById('darkToggle');
const root = document.documentElement;

document.addEventListener('DOMContentLoaded', () => {
  const saved = localStorage.getItem('theme') || 'light';
  root.setAttribute('data-theme', saved);
  btn.textContent = saved === 'dark' ? '☀️' : '🌙';
});

btn.addEventListener('click', () => {
  const next = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
  root.setAttribute('data-theme', next);
  localStorage.setItem('theme', next);
  btn.textContent = next === 'dark' ? '☀️' : '🌙';
});
```

---

## 📜 Nutzung

1. Stelle sicher, dass `bottle` installiert ist:
   ```bash
   pip install bottle
   ```

2. Starte den Server:

   python app.py
   

3. Rufe die Seite im Browser auf:
   
   http://localhost:8080
   

4. Navigiere zwischen den Trainingsseiten über Buttons/Links in den Templates.



## 🧠 Übungstexte

Die Datei `uebungsliste.py` enthält ein Dictionary `übungen` mit Boxtechniken. Beispielstruktur:

```python
übungen = {
    "Beinstellung": """...Text...""",
    "Deckung": """...Text..."""
}
```

Diese Inhalte werden serverseitig dynamisch in Templates eingefügt.

---

## 👨‍🏫 Hinweise

- Die .tpl-Dateien werden von Bottle mit der `template()`-Funktion gerendert.
- Statische Dateien wie Bilder oder CSS und Videos sollten im `static/`-Ordner liegen.
- In `app.py` wird bereit mit `@route('/static/<filename:path>')` die verweisung definiert.

---

© 2025 — WebApps Projekt, erstellt im Rahmen universitärer Lehre
