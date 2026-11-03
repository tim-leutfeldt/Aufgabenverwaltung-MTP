# Git-Übungen

Die Übungen aus `KAS_Git_1_1.pdf` wurden im [privaten Repository](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP) mit `brief.txt` und `pakete.txt` durchgeführt. Der Hauptbranch heißt hier `main` statt `master`. Die Tags beziehen sich auf die Übungen, nicht auf den Entwicklungsstand der C#-Anwendung.

## Ablauf

1. Den Brief angelegt, danach ergänzt und `pakete.txt` hinzugefügt. Anschließend den Brief verbessert und den Namen ergänzt. Diese Schritte wurden jeweils committet.
2. Änderungen mit `git diff` verglichen und den ersten Stand mit `git checkout` angesehen. Die Stände wurden als `0.9.0` und `1.0.0` markiert.
3. Von `1.0.0` die unabhängigen Branches `A140` (Anrede) und `A141` (Wiedereröffnungsdatum) erstellt. Beide wurden über Pull Requests nach `main` zusammengeführt: Version `1.1.0`.
4. Auf Basis von `1.0.0` die Zeile „Filialleiterin“ ergänzt und als `1.0.1` markiert. Nur diesen Commit mit `git cherry-pick -x` nach `main` übernommen: Version `1.1.1`.
5. Die Schlusszeilen in zwei Branches unterschiedlich geändert. Beim Merge entstand ein Konflikt, der manuell zu „ihre Filialleitung Erika Zinker“ aufgelöst wurde.
6. Für Gitflow `develop` erstellt und dort das Feature `feature/paketzeiten` integriert. Danach `release/1.2.0` nach `main` zusammengeführt, getaggt und nach `develop` zurückgeführt.
7. Im Branch `hotfix/1.2.1` die Anrede „sie“ zu „Sie“ korrigiert. Den Hotfix nach `main` übernommen, getaggt und ebenfalls nach `develop` zurückgeführt.

Branches und Tags wurden gepusht. Nach den GitHub-Merges wurden die lokalen Branches mit `git pull --ff-only` aktualisiert.

## Pull Requests

Alle acht Pull Requests sind zusammengeführt.

| PR | Änderung | Ziel |
|:---|:---|:---|
| [#1](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/1) | A140: Anrede und Leerzeile | `main` |
| [#2](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/2) | A141: Wiedereröffnungsdatum | `main` |
| [#3](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/3) | Merge-Konflikt lösen | `main` |
| [#4](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/4) | Paketannahmezeiten | `develop` |
| [#5](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/5) | Release 1.2.0 | `main` |
| [#6](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/6) | Release zurückführen | `develop` |
| [#7](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/7) | Hotfix 1.2.1 | `main` |
| [#8](https://github.com/tim-leutfeldt/Aufgabenverwaltung-MTP/pull/8) | Hotfix zurückführen | `develop` |

## Hinweise

Das Repository war bereits angelegt. Fork und separates Clone wurden nicht durchgeführt; die verschiedenen Entwicklungsrollen wurden durch Branches dargestellt. Statt GitHub Desktop wurde die Kommandozeile verwendet.

Die Git-Prüfungen waren erfolgreich. Der C#-Build scheiterte mit `NETSDK1045`: Das Projekt benötigt .NET 9, installiert ist SDK 8.0.400. Die Tests wurden deshalb nicht erfolgreich ausgeführt.

## Historie ansehen

```powershell
git log --graph --oneline --decorate --all
git show 1.0.0:brief.txt
git diff 1.0.0 1.1.0 -- brief.txt
git branch -a
git tag
```
