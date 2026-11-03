---
title: "Git-Übungen zur Aufgabenverwaltung"
authors:
  - Tim Leutfeldt
status: draft
file-version: "1.0"
created: 2026-11-03
last-updated: 2026-11-03
---

# Git-Übungen zur Aufgabenverwaltung

## Version History

| Version | Date | Author(s) | Summary of Changes |
|:---|:---|:---|:---|
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

Branches und Tags wurden zu GitHub gepusht. Nach den GitHub-Merges wurden die lokalen Zielbranches mit `git pull --ff-only origin <branch>` aktualisiert.

Die Fork-Übung setzt ein fremdes Upstream-Repository voraus. Hier ist das private Originalrepository selbst das Ziel; ein Fork des eigenen Repositorys wurde nicht angelegt. Ebenso ersetzt GitHub den beispielhaften Bare-Server auf einem Netzlaufwerk. Die Schritte wurden mit Git und GitHub CLI statt GitHub Desktop ausgeführt.

## Gitflow: Seiten 82–87

1. `develop` aus `main` erstellen und mit Tracking nach GitHub pushen.
2. `feature/paketzeiten` aus `develop` erstellen.
3. Paketannahmezeiten ergänzen, committen und pushen.
4. PR #4 nach `develop` erstellen und mit Merge-Commit zusammenführen.
5. `develop` aktualisieren und `release/1.2.0` erstellen.
6. Auf dem Release-Branch die Übung dokumentieren und prüfen.

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
