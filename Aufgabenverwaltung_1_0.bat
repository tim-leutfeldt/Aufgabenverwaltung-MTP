REM Solution erstellen =====================================================================================================
dotnet new sln -n Aufgabenverwaltung
pause
REM Konsolenprojekt erstellen =====================================================================================================
dotnet new console -n Aufgabenverwaltung
pause
REM Testprojekt erstellen =====================================================================================================
dotnet new xunit -n Aufgabenverwaltung.Tests
pause
REM Projekte zur Solution hinzufügen =====================================================================================================
dotnet sln Aufgabenverwaltung.sln add Aufgabenverwaltung/Aufgabenverwaltung.csproj
dotnet sln Aufgabenverwaltung.sln add Aufgabenverwaltung.Tests/Aufgabenverwaltung.Tests.csproj
pause
REM  Testprojekt mit dem Hauptprojekt verbinden=====================================================================================================
dotnet add Aufgabenverwaltung.Tests/Aufgabenverwaltung.Tests.csproj reference Aufgabenverwaltung/Aufgabenverwaltung.csproj
pause
REM Grundprojekt prüfen =====================================================================================================
dotnet build
pause
REM  =====================================================================================================
dotnet run --project Aufgabenverwaltung
pause
REM  =====================================================================================================
dotnet test
pause
