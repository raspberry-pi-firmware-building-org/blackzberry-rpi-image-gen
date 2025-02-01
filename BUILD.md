# Build the latest Firmware for:  Raspberry Pi

```md

# Raspberry Pi OS (RaspiOS) Firmware Image vom Quellcode erstellen

Diese Anleitung beschreibt, wie du ein aktuelles Raspberry Pi OS (RaspiOS) Firmware-Image mit den neuesten Funktionen und Paketen vom Quellcode aus erstellst.

## Voraussetzungen

### Hardware
- Ein leistungsfähiger Rechner mit mindestens 8 GB RAM und 100 GB freiem Speicherplatz
- Optional: Ein Raspberry Pi zum Testen

### Software
- Linux-basierte Umgebung (Ubuntu/Debian empfohlen)
- Git
- `debootstrap`
- `qemu-user-static`
- `binfmt-support`
- `schroot`
- Cross-Compiler (z. B. `gcc-aarch64-linux-gnu`)

## 1. Quellcode beziehen

### Raspberry Pi OS Repository klonen
```sh
mkdir ~/raspios-build
cd ~/raspios-build
git clone --depth=1 https://github.com/RPi-Distro/pi-gen.git
cd pi-gen
```

## 2. Abhängigkeiten installieren

### Debian/Ubuntu
```sh
sudo apt update && sudo apt install -y debootstrap qemu-user-static binfmt-support schroot git curl xz-utils \
    dosfstools libarchive-tools quilt parted coreutils kmod gcc-aarch64-linux-gnu
```

## 3. Konfiguration vorbereiten

### Konfigurationsdatei erstellen
Erstelle eine Datei `config` mit folgendem Inhalt:
```sh
IMG_NAME="RaspiOS_Custom"
DEPLOY_COMPRESSION="xz"
ENABLE_SSH=1
```
Weitere Konfigurationsoptionen findest du in der `README.md` von `pi-gen`.

## 4. Build-Prozess starten

Führe den Build-Prozess mit folgendem Befehl aus:
```sh
./build.sh
```
Der Prozess kann mehrere Stunden dauern, je nach Leistung der Hardware.

## 5. Image überprüfen und flashen

Nach erfolgreichem Build befindet sich das Image im `deploy`-Verzeichnis. Es kann mit `dd` oder `Raspberry Pi Imager` auf eine SD-Karte geschrieben werden:
```sh
sudo dd if=deploy/RaspiOS_Custom.img of=/dev/sdX bs=4M status=progress
```
Ersetze `/dev/sdX` mit der tatsächlichen Gerätenummer der SD-Karte.

## 6. Anpassungen und Erweiterungen

### Zusätzliche Pakete installieren
Falls zusätzliche Pakete benötigt werden, können diese über die `stage`-Verzeichnisse in `pi-gen` definiert werden. Beispielsweise kann `vim` durch Bearbeiten der `stage2/00-packages`-Datei hinzugefügt werden:
```sh
echo "vim" >> stage2/00-packages
```
Dann den Build erneut starten.

### Eigenes Kernel-Image kompilieren
Falls ein benutzerdefinierter Kernel erforderlich ist:
```sh
git clone --depth=1 https://github.com/raspberrypi/linux.git
cd linux
make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig
make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- -j$(nproc)
```
Das fertige Kernel-Image kann in das erstellte `boot`-Verzeichnis kopiert werden.

## Fazit

Mit diesen Schritten kann ein individuelles Raspberry Pi OS Image mit den neuesten Funktionen und Paketen erstellt werden. Anpassungen können je nach Bedarf durch Hinzufügen von Paketen oder Konfigurationen erfolgen.


```