# Radball Turniermanager

Planung und Live-Steuerung von Radball-Turnieren: Gruppen bilden, Spiel- und Zeitplan auf 1–3 Feldern erzeugen, Spiele verschieben, Wettkampfgericht mit Timer, Anzeigetafel, Infoscreen, Fan-App mit QR-Code und Druckbögen. Ein Bewerb kann ein einzelner Turniertag sein oder über mehrere Runden gehen (z. B. ASVÖ-Cup).

**Stand:** Konzept und klickbares Mockup mit Beispieldaten. Noch keine echte Anwendung.

## Ansehen

- **Klick-Mockup:** https://jurgpi.github.io/radball-turnier-manager/
- **Konzept:** https://jurgpi.github.io/radball-turnier-manager/konzept.html

Im Mockup läuft alles im Browser. Eingaben bleiben nur im eigenen Browser gespeichert, „Demo zurücksetzen“ unter *Planung* stellt die Beispieldaten wieder her.

### Turnier simulieren

1. Reiter **Turnierleitung** öffnen.
2. Oben **Autopilot spielt alle Spiele** anhaken und **60×** wählen.
3. Mit **Verzögerungen simulieren** gibt es verspätete Anpfiffe und Unterbrechungen; der Zeitplan rückt automatisch nach.
4. Anzeigetafel, Infoscreen oder Fan-App in einem zweiten Tab öffnen: die Tabs laufen synchron.

## Aufbau

| Pfad | Inhalt |
| --- | --- |
| `docs/mockup.html` | Quelle des Mockups (Seiten-Fragment, auch als Claude-Artifact veröffentlicht) |
| `docs/konzept.html` | Quelle des Konzepts |
| `index.html`, `konzept.html` | Erzeugte Seiten für GitHub Pages |
| `tools/build-pages.ps1` | Erzeugt die Seiten aus `docs/` |

Nach Änderungen an `docs/`:

```powershell
powershell -File tools\build-pages.ps1
```

Excel-Vorlagen (`*.xls*`) werden nicht hochgeladen, weil sie Spielernamen enthalten.
