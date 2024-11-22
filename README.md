# 🚀 Nextcloud Installation Script

Dieses Skript automatisiert die Installation und Konfiguration von **Nextcloud** auf einem **Ubuntu 22.04** Server. Es umfasst die Einrichtung von Apache, MariaDB, PHP 8.1, Redis und Opcache. Zudem bietet es die Möglichkeit, SSL-Zertifikate mit Certbot zu installieren.

---

## 🛠️ Features
- **Automatische Installation** von Nextcloud und allen notwendigen Abhängigkeiten.
- **Konfiguration** von MariaDB, PHP 8.1, Redis und Opcache.
- **SSL-Zertifikatsoption**: Installation während der Einrichtung oder nachträglich.
- **Erkennung bestehender Installationen**: Option, SSL später hinzuzufügen.

---

## ⚙️ Voraussetzungen
- Frische Installation von **Ubuntu 22.04**.
- Root- oder Sudo-Zugriff auf den Server.

---

## 📖 Usage
1. **Repository klonen:**
   ```bash
   git clone https://github.com/ZeroPingLLC/nextcloud.git
   ```

2. **In das Skriptverzeichnis wechseln:**
   ```bash
   cd nextcloud
   ```

3. **Das Skript ausführbar machen:**
   ```bash
   chmod +x install_nextcloud.sh
   ```

4. **Das Skript ausführen:**
   ```bash
   sudo ./install_nextcloud.sh
   ```

5. **Anweisungen folgen:**
   - MariaDB-Benutzernamen und Passwort eingeben.
   - Subdomain für deine Nextcloud-Instanz eingeben.

### Optional: SSL-Installation
Falls du SSL während der initialen Einrichtung nicht installierst, kannst du das Skript später erneut ausführen, um SSL hinzuzufügen.

---

## 🔍 Script Details
- **Benutzereingaben sammeln:** MariaDB-Zugangsdaten und Subdomain.
- **Installationsprotokoll erstellen:** Speichert die Installationsdetails, einschließlich des MariaDB-Passworts im Klartext, zur späteren Referenz.
- **Nextcloud installieren:** Einrichtung von Apache, MariaDB, PHP 8.1, Redis und Opcache. Herunterladen und Einrichten von Nextcloud.
- **SSL installieren:** Optionale Installation von SSL-Zertifikaten mit Certbot.

---

## 📝 Notes
- Stelle sicher, dass deine DNS-Einstellungen die Subdomain auf die IP-Adresse deines Servers zeigen.
- Das Skript überprüft bestehende Nextcloud-Installationen und bietet SSL-Optionen nur an, wenn Nextcloud eingerichtet ist.

---

## ❓ Troubleshooting
- **Apache-Probleme:** Überprüfe die Protokolle unter `/var/log/apache2/`.
- **MariaDB-Probleme:** Stelle sicher, dass die Datenbank und Benutzer korrekt erstellt sind.
- **Netzwerkprobleme:** Überprüfe die Firewall-Regeln, wenn Verbindungsprobleme auftreten.

---

## 🧑‍💻 Author
- **Kristian Gasic**
- Bereitgestellt von **https://gasic.bio**
- Lizenz: **Free for use**

---

## 📬 Support
Für Fragen oder Unterstützung:
**kristian@gasic.bio & Discord : Pain0xF**

🎥 **Video-Tutorial:** [YouTube ansehen](https://www.youtube.com/watch?v=_KRrfq_h9rk)

---
✨ *Automatisiere deine Nextcloud-Installation mühelos und effizient!*
```
