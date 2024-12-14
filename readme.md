# 🚀 Anki Sync Server - Docker

Anki Sync Server is a lightweight, efficient, self-hosted alternative to AnkiWeb for synchronizing your Anki decks across devices. 

This Dockerized version is built on the original [Anki Sync Server](https://github.com/ankitects/anki/blob/main/docs/syncserver/Dockerfile.distroless), offering an easy-to-deploy, privacy-friendly solution.

---

## 🌟 Features

- 🪶 **Lightweight**: Minimal image size (< 50MB) based on Distroless.
- ⚙️ **Easy Deployment**: Set up quickly with Docker Compose.
- 🛡️ **Privacy-First**: Your data stays with you.

---

## 📖 Usage

Run the server locally or on your homelab. Expose it to the internet securely using:
- An **NGINX reverse proxy**, or
- A **reverse SSH tunnel**.

---

## 🛠️ Requirements

Ensure the following are installed:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)

---

## ⚡ Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/EvanDufraisse/anki-sync-server.git
    cd anki-sync-server
    ```

2. **Configure environment variables**:
    ```bash
    cp .env.example .env
    ```

    Edit `.env`:
    ```env
    HOST_PORT=27701              # Port on the host
    USERNAME1=admin              # First user
    PASSWORD1=admin              # User password
    ANKI_FILES_PATH=/path/to/anki/storage # Path to Anki storage
    ```

3. **Build and run the server**:
    ```bash
    docker-compose down && docker-compose up -d
    ```

4. **Verify the container is healthy**:
    ```bash
    docker container ls | grep anki-sync-server
    ```

    Debug if necessary:
    ```bash
    docker logs anki-sync-server
    ```

---

## 📝 TODO

- [ ] Add support for password hashing.

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## 🙌 Acknowledgements

- [Anki](https://apps.ankiweb.net/) - The intelligent flashcard program that makes remembering easy.
