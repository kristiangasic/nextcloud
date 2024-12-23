# 🚀 Nextcloud Installation Script

This script automates the installation and configuration of **Nextcloud** on an **Ubuntu 22.04** server. It includes the setup of Apache, MariaDB, PHP 8.1, Redis, and Opcache. Additionally, it offers the option to install SSL certificates using Certbot.

---

## 🛠️ Features
- **Automatic installation** of Nextcloud and all required dependencies.
- **Configuration** of MariaDB, PHP 8.1, Redis, and Opcache.
- **SSL certificate option**: Install during setup or at a later stage.
- **Detection of existing installations**: Option to add SSL later.

---

## ⚙️ Requirements
- Fresh installation of **Ubuntu 22.04**.
- Root or sudo access to the server.

---

## 📖 Usage
1. **Clone the repository:**
   ```bash
   git clone https://github.com/kristiangasic/nextcloud.git
   ```

2. **Navigate to the script directory:**
   ```bash
   cd nextcloud
   ```

3. **Make the script executable:**
   ```bash
   chmod +x install_nextcloud.sh
   ```

4. **Run the script:**
   ```bash
   sudo ./install_nextcloud.sh
   ```

5. **Follow the instructions:**
   - Enter the MariaDB username and password.
   - Provide the subdomain for your Nextcloud instance.

### Optional: SSL Installation
If you don't install SSL during the initial setup, you can rerun the script later to add SSL.

---

### **Option 2: Using Docker**

#### 📂 **Prepare the files**
1. **Create the necessary files:**
   - `Dockerfile`: Container image for Nextcloud.
   - `docker-compose.yml`: Docker Compose configuration for Nextcloud, MariaDB, Redis, and optionally a reverse proxy.
   - `php.ini`: Configuration for PHP (e.g., upload limits and Opcache).

2. **File contents:**
   - Copy the file contents from the relevant sections below.

---

#### ⚙️ **Instructions**
1. **Create the project structure:**
   ```bash
   mkdir nextcloud-docker && cd nextcloud-docker
   touch Dockerfile docker-compose.yml php.ini
   ```

2. **Add file content:**
   Insert the provided content into the respective files.

3. **Start Docker containers:**
   ```bash
   docker-compose up -d
   ```

4. **Set up Nextcloud:**
   Open `http://<server-ip>` in your browser and follow the Nextcloud installation wizard.

5. **Add SSL certificates (optional):**
   If using a reverse proxy like Traefik, SSL certificates will be configured automatically through Let's Encrypt.

---

## 🔍 Script Details
- **User input collection:** MariaDB credentials and subdomain.
- **Installation log creation:** Saves installation details, including the MariaDB password in plain text, for later reference.
- **Install Nextcloud:** Configures Apache, MariaDB, PHP 8.1, Redis, and Opcache. Downloads and sets up Nextcloud.
- **Install SSL:** Optional installation of SSL certificates using Certbot.

---

## 📝 Notes
- Ensure your DNS settings point the subdomain to your server's IP address.
- The script checks for existing Nextcloud installations and offers SSL options only if Nextcloud is already set up.

---

## ❓ Troubleshooting
- **Apache issues:** Check logs in `/var/log/apache2/`.
- **MariaDB issues:** Ensure the database and user are correctly created.
- **Network issues:** Check firewall rules if connectivity issues arise.

---

## 🧑‍💻 Author
- **Kristian Gasic**
- Provided by **https://gasic.bio**
- License: **Free for use**

---

## 📬 Support
For questions or assistance:
**kristian@gasic.bio & Discord : Pain0xF**

🎥 **Video Tutorial:** [Watch on YouTube](https://www.youtube.com/watch?v=_KRrfq_h9rk)

[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/kristiangasic)
