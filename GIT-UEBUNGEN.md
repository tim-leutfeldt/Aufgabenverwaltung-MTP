---
title: "Git-Übungen zur Aufgabenverwaltung"
authors:
  - Tim Leutfeldt
status: draft
file-version: "2.1"
created: 2026-11-03
last-updated: 2026-11-03
---

# Git-Übungen zur Aufgabenverwaltung

## Version History

| Version | Date | Author(s) | Summary of Changes |
|:---|:---|:---|:---|
| 2.1 | 2026-11-03 | Tim Leutfeldt | Abgeschlossene Hotfix-Pull-Requests verlinkt. |
| 2.0 | 2026-11-03 | Tim Leutfeldt | Release, Hotfix, Rückführung und Prüfergebnis ergänzt. |
| 1.0 | 2026-11-03 | Tim Leutfeldt | Lokale Git-Übungen und erster Gitflow-Release dokumentiert. |

## Executive Summary

Die praktischen Git-Übungen aus `KAS_Git_1_1.pdf` werden mit echten Git-Objekten und GitHub-Pull-Requests im privaten Repository durchgeführt. Die Beispieldateien `brief.txt` und `pakete.txt` liegen neben dem bestehenden C#-Projekt. Die Versionsnummern beziehen sich auf die Git-Übungen, nicht auf den Funktionsumfang der C#-Anwendung.

---

## Repository und Identität

- Repository: https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP
- Hauptbranch: `main` (entspricht `master` im Skript).
- Neue lokale Commits: Tim Leutfeldt, `341853124+tim-leutfeldt@users.noreply.github.com`.
- Der vorhandene Initial-Commit bleibt erhalten.

## Lokale Übungen: Seiten 16–36

| Schritt | Tatsächlicher Nachweis |
|:---|:---|
| Repository initialisieren | Bereits vorhandenes Repository mit Initial-Commit `1355551`; nicht erneut angelegt. |
| Erster Schnappschuss | `9357b1c` – Projekt begonnen; Entwurf von `brief.txt`. |
| Zweiter Schnappschuss | `e21f0ce` – Brief ergänzt und Schild für Pakete erstellt. |
| Dritter Schnappschuss | `1c0dae6` – A121 Brief verbessert, mit `git commit -a`. |
| Unterschiede vergleichen | `git diff 0.9.0 HEAD -- brief.txt` wurde ausgeführt. |
| Alten Stand auschecken | `git checkout --detach 0.9.0`, anschließend `git checkout main`. |
| Markierungen | `0.9.0` am ersten Brief-Commit; `1.0.0` nach A122. Die lokale Markierung wurde vor Veröffentlichung vom A121-Stand zum A122-Stand versetzt. |
| Unabhängige Zweige | `A140` und `A141` wurden beide von Version `1.0.0` angelegt; jeweils zwei Commits. |
| Änderungen zusammenführen | PR #1 und PR #2 mit Merge-Commits nach `main`; Tag `1.1.0`. |
| Cherry-Pick | `1285ef9` auf `hotfix/1.0.1` wurde mit `git cherry-pick -x` als `5e98cc2` nach `main` übertragen; Tags `1.0.1` und `1.1.1`. |
| Merge-Konflikt | `konflikt/filialleitung` und `main` änderten dieselben Schlusszeilen. `git merge main` erzeugte einen echten Konflikt. |
| Konfliktlösung | `90a3c23` – Merge-Konflikt bei der Filialleitung behoben; Ergebnis: „ihre Filialleitung Erika Zinker“. |

## GitHub-Workflow: Seiten 38–73

| Pull Request | Inhalt | Ziel |
|:---|:---|:---|
| [#1](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/1) | A140: Weniger förmliche Anrede, anschließend zusätzlicher Leerzeilen-Commit im offenen PR | `main` |
| [#2](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/2) | A141: Wiedereröffnungsdatum | `main` |
| [#3](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/3) | Echter Merge-Konflikt und manuelle Lösung | `main` |
| [#4](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/4) | Gitflow-Feature: Paketannahmezeiten | `develop` |
| [#5](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/5) | Release 1.2.0 | `main` |
| [#6](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/6) | Release 1.2.0 zurückführen | `develop` |
| [#7](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/7) | Hotfix 1.2.1: Höflichkeitsanrede | `main` |
| [#8](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/8) | Hotfix 1.2.1 zurückführen | `develop` |

Branches und Tags wurden zu GitHub gepusht. Nach den GitHub-Merges wurden die lokalen Zielbranches mit `git pull --ff-only origin <branch>` aktualisiert.

Die Fork-Übung setzt ein fremdes Upstream-Repository voraus. Hier ist das private Originalrepository selbst das Ziel; ein Fork des eigenen Repositorys wurde nicht angelegt. Ebenso ersetzt GitHub den beispielhaften Bare-Server auf einem Netzlaufwerk. Die Schritte wurden mit Git und GitHub CLI statt GitHub Desktop ausgeführt.

## Gitflow: Seiten 82–87

1. `develop` aus `main` erstellen und mit Tracking nach GitHub pushen.
2. `feature/paketzeiten` aus `develop` erstellen.
3. Paketannahmezeiten ergänzen, committen und pushen.
4. PR #4 nach `develop` erstellen und mit Merge-Commit zusammenführen.
5. `develop` aktualisieren und `release/1.2.0` erstellen.
6. Auf dem Release-Branch die Übung dokumentieren und prüfen.
7. PR #5 nach `main` zusammenführen und den annotierten Tag `1.2.0` pushen.
8. Das veröffentlichte Release mit PR #6 von `main` nach `develop` zurückführen.

### Hotfix 1.2.1

Vom veröffentlichten `main` wurde `hotfix/1.2.1` erstellt. Der Hotfix korrigiert die Höflichkeitsanrede „sie“ zu „Sie“ im Brief. Er wurde mit PR #7 nach `main` integriert, als `1.2.1` annotiert getaggt und mit PR #8 nach `develop` zurückgeführt. Damit wurde auch der Wartungsablauf aus Seite 87 tatsächlich ausgeführt. Alle acht verlinkten Pull Requests sind zusammengeführt.

## Prüfung

- `git diff --check`: ohne Fehler.
- Die Konfliktmarker wurden vollständig entfernt; der Brief enthält Anrede, Wiedereröffnungsdatum und vereinheitlichte Filialleitung.
- Das C#-Projekt zielt auf `net9.0`. Der lokale Build mit `dotnet build Aufgabenverwaltung/Aufgabenverwaltung.csproj --no-restore` scheitert mit `NETSDK1045`, weil nur SDK `8.0.400` verfügbar ist. Für Build und Tests wird ein .NET-9-kompatibles SDK benötigt.
- Die aufgerufenen `dotnet test --no-restore`-Befehle lieferten keine Testausführung; sie sind kein Nachweis bestandener Tests.
- Fork und separates Clone sind in diesem bestehenden Originalrepository nicht ausgeführt worden. Die anderen Entwicklungsrollen werden durch unabhängige Branches im selben Arbeitsverzeichnis dargestellt.

## Historie selbst ansehen

```powershell
git log --graph --oneline --decorate --all
git show 0.9.0:brief.txt
git show 1.0.0:brief.txt
git show 1.1.0:brief.txt
git show 1.0.1:brief.txt
git show 1.1.1:brief.txt
git show 90a3c23
git branch -a
git tag
```
