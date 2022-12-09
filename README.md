# J-Link_Synchronous_Minimal

Dieses Beispiel ist das absolute Minimum um eine synchrone J-Link Anwendung in Creo zu laden. Es soll dazu dienen, die Arbeitsumgebung und Konfigurationen richtig einzustellen.

Es wird lediglich eine Dialogbox geöffnet um nachzuweisen, dass die Start Methode ausgeführt wurde.

Erstellt wurde das Beispiel mit Eclipse (Java) 2020-12 und getestet mit Creo 2.0 M150.

## Verzeichnisstruktur

./src: Java Quelldate

./creo: Dieses Verzeichnis wir als JLINK_HOME angesehen. Startbverzeichnis für Creo.

./creo/app: Hier werden die compelierten Java Dateien abgelegt. Erstellt durch die start_creo.bat

./creo/config: Einzel config.pro Dateien, zusammengesetzt durch start_creo.bat

./creo/protk: Ablage der protk.dat mit den J-Link Parametern.

./creo/text: Für das Minimal-Beisiel eigentlich nicht notwendig.


## Programm starten

Nach dem Compelieren mit "Java 1.6.0_13 64-Bit" müssen die ".class" Dateien im Verzeichnis ./bin verfügbar sein. Es ist wichtig die gleiche Version und Bit-Werigkeit (32/64) beim Compelieren zu nehmen, wie auch bei der Ausführung von Creo geplant wird. Soll heißen, 64-Bit Creo bedingt 64-Bit Java. Es ist zu empfehlen, die JRE von Creo unter  %CREO_LOADPOINT%\Common Files\M150\x86e_win64\obj\JRE zum compelieren und als Laufzeitumgebung zu verwenden.

Die Datei .\creo\start_creo.bat muss sehr wahrscheinlich auf die lokalen Gegebenheit angepasst werden. Es sollte eigentlich ausreichen den CREO_LOADPOINT, DATECODE und MACHINE_TYPE anzupassen.
