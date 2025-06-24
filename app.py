from bottle import Bottle, run, template, request, static_file,redirect
from bottle import url
import os
import random
from uebungsliste import übungen
import urllib.parse

css_url = "/static/Style.css"

motivationssaetze = [
    "Du schaffst das!",
    "Jeder Schritt zählt.",
    "Gib niemals auf.",
    "Stärker mit jedem Training.",
    "Dein Körper kann mehr, als du denkst.",
    "Bleib dran!",
    "Du wächst über dich hinaus.",
    "Heute ist dein Tag.",
    "Es wird nicht leichter – du wirst stärker.",
    "Vertrau dem Prozess.",
    "Erfolg beginnt im Kopf.",
    "Der Schmerz geht, der Stolz bleibt.",
    "Motivation bringt dich los, Gewohnheit bringt dich weiter.",
    "Train hard or go home.",
    "Es ist okay, langsam zu sein – Hauptsache, du bleibst nicht stehen.",
    "Jeder Tropfen Schweiß ist ein Schritt zum Ziel.",
    "Grenzen existieren nur im Kopf.",
    "Du bist dein einziges Limit.",
    "Keine Ausreden!",
    "Dein Ziel ist näher als du denkst.",
    "Träume brauchen Disziplin.",
    "Der Wille formt den Körper.",
    "Heute schwitzen – morgen glänzen.",
    "Mach es für dich.",
    "Ein bisschen besser als gestern.",
    "Die einzige schlechte Einheit ist die, die du nicht machst.",
    "Sei stärker als deine Ausrede.",
    "Du bist nicht allein – bleib dran.",
    "Kämpfe für dein Ziel.",
    "Jeder Anfang ist schwer – bleib dran.",
    "Mach weiter, auch wenn’s brennt.",
    "Du wirst dich belohnen.",
    "Wachstum kommt durch Wiederholung.",
    "Der Weg ist das Ziel.",
    "Du kannst mehr, als du glaubst.",
    "Dranbleiben ist alles.",
    "Training ist Selbstrespekt.",
    "Bleib hungrig, bleib stark.",
    "Schmerz ist temporär – Stolz ist für immer.",
    "Nur wer aufgibt, verliert.",
    "Heute kämpfen, morgen feiern.",
    "Lass die Ausreden zuhause.",
    "Taten sprechen lauter als Worte.",
    "Du wirst stärker mit jeder Wiederholung.",
    "Erfolg ist kein Zufall.",
    "Glaube an deinen Fortschritt.",
    "Dein Körper dankt dir.",
    "Jeder Satz zählt.",
    "Jede Bewegung bringt dich voran.",
    "Raus aus der Komfortzone!",
    "Stark beginnt im Kopf.",
    "Dein Ziel – dein Weg – dein Tempo.",
    "Sei stolz auf dich.",
    "Kleine Schritte – große Wirkung.",
    "Du bist auf dem richtigen Weg.",
    "Gib deinem Warum ein Wie.",
    "Durchhalten ist alles.",
    "Fit ist kein Ziel – es ist ein Lebensstil.",
    "Deine Zukunft beginnt heute.",
    "Jede Einheit ist ein Statement.",
    "Beweise dir, was du kannst.",
    "Der erste Schritt zählt.",
    "Mach dich selbst stolz.",
    "Disziplin schlägt Motivation.",
    "Jede Wiederholung bringt Fortschritt.",
    "Was du heute schaffst, bringt dich morgen weiter.",
    "Aufgeben ist keine Option.",
    "Erfolg ist Schweiß + Wille.",
    "Du wirst nicht bereuen, dass du trainiert hast.",
    "Veränderung beginnt mit Entscheidung.",
    "Bewegung ist Leben.",
    "Du trainierst nicht um gut zu sein – sondern um besser zu werden.",
    "Jeder Tag zählt.",
    "Bleib konsequent – dein Ich von morgen wird's dir danken.",
    "Energie kommt durch Bewegung.",
    "Kein Training ist umsonst.",
    "Trainiere hart, bleib demütig.",
    "Hinter jedem Muskel steckt eine Geschichte.",
    "Du bist stärker, als du denkst.",
    "Jeder Muskel wird verdient.",
    "Dein Einsatz zahlt sich aus.",
    "Selbst kleine Fortschritte sind Fortschritte.",
    "Was heute hart ist, ist morgen deine Aufwärmung.",
    "Es ist okay zu straucheln – aber nicht zu stoppen.",
    "Erfolg braucht Wiederholung.",
    "Trainiere für dich – nicht für andere.",
    "Investiere in dich selbst.",
    "Bleib fokussiert.",
    "Du bist deine stärkste Motivation.",
    "Ziele erreichen sich nicht von selbst.",
    "Mach es – trotz Müdigkeit.",
    "Die Zeit ist jetzt.",
    "Du wächst mit jeder Einheit.",
    "Bleib in Bewegung.",
    "Du bist auf dem richtigen Weg.",
    "Alles beginnt mit einer Entscheidung.",
    "Du musst nicht perfekt sein – nur beständig.",
    "Komm zurück – stärker.",
    "Trainiere deinen Willen.",
    "Erschaffe dein neues Ich.",
    "Konstanz schlägt Intensität.",
    "Zeig, woraus du gemacht bist.",
    "Jeder Tag ist eine neue Chance."
]
app = Bottle()

@app.route('/kontakt')
def kontakt():
    name = request.query.name or ''
    embed_url = (
      "https://calendar.google.com/calendar/appointments/schedules/AcZssZ2UYlthDyexZ2uWllT00xVNHVbC1OBOMDaXdg99wWwnCz9Epaox9jLgNGLYAK3X0ymgSVgqQ4UW?gv=true"
    )
    return template('kontakt', css=css_url, name=name, calendar_embed_url=embed_url)

@app.route('/kontakt/whatsapp')
def kontakt_whatsapp():
    nummer = '+491768214025'
    text = urllib.parse.quote('Hallo, ich habe eine Frage zu eurem Training.')
    whatsapp_url = f'https://wa.me/{nummer}?text={text}'
    return redirect(whatsapp_url)

@app.route('/static/<filepath:path>')
def get(filepath):
        static_ordner = os.path.join(os.path.dirname(__file__), 'static')
        return static_file(filepath, root=static_ordner)

@app.route('/bilder/<filepath:path>', name='bilder')
def serve_bild(filepath):
    bild_ordner = os.path.join(os.path.dirname(__file__), 'static')
    return static_file(filepath, root=bild_ordner)

@app.route('/videos/<filepath:path>')
def serve_video(filepath):
    video_ordner = os.path.join(os.path.dirname(__file__), 'static')
    # static_file wählt den passenden Content-Type automatisch
    return static_file(filepath, root=video_ordner)



# === Routen für deine Seiten, jeweils mit dynamischer Bildliste ===
@app.route('/')
def frontend():
    name = request.query.name or ''
    return template('frontend', css=css_url, name=name)

@app.route('/impressum')
def impressum():
    return template('impressum', css=css_url)

@app.route('/krafttraining')
def boxkraft():
    spruch = random.choice(motivationssaetze)
    return template(
        'krafttraining',
        css=css_url,
        motivation=spruch,
        data=übungen, 
        url=url
    )

@app.route('/Cardiotraining')
def cardiotraining():
    spruch = random.choice(motivationssaetze)
    return template(
        'Cardiotraining',
        css=css_url,
        motivation=spruch,
        data=übungen, 
        url=url
    )

@app.route('/Tabata Uhr')
def tabata():
    return template('Tabata Uhr', css=css_url)



@app.route('/technisches-training')
def techniktraining():
    spruch = random.choice(motivationssaetze)

    return template(
        'technisches-training',
        css=css_url,
        motivation=spruch,
        data=übungen, 
        url=url
    )

@app.route('/überbrückung')
def ueberbrueckungsseite():

    return template('überbrückung', css=css_url)

run(app, host='localhost', port=8080, debug=True, reloader=True)