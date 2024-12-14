# Anki Sync Server - Docker

Anki Sync Server is a lightweight and efficient server for synchronizing Anki decks. This server is designed to be a self-hosted alternative to AnkiWeb, allowing users to sync their Anki decks across multiple devices.

This is a Dockerized version of the Anki Sync Server based on the original [Anki Sync Server](https://github.com/ankitects/anki/blob/main/docs/syncserver/Dockerfile.distroless)

## Requirements

Look the installation guides for your OS:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)


## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/EvanDufraisse/anki-sync-server.git
    cd anki-sync-server
    ```

2. Rename .env.example to .env and set the environment variables:
    ```sh
    cp .env.example .env

    # Example .env file
    #HOST_PORT=27701 # Port on host
    #USERNAME1=admin # Username of the first user
    #PASSWORD1=admin # Password of the first user
    #ANKI_FILES_PATH=/path/to/anki/storage/on/host # Path to the Anki storage on host
    ```

3. Build and run the server:
    ```sh
    docker-compose down && docker-compose up -d
    ```

4. Check the docker container is (healthy):
    ```sh
    docker container ls | grep anki-sync-server
    ```

    If you need to debug:
    ```sh
    docker logs anki-sync-server
    ```

## TODO:

- [ ] Make the password hash feature work

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Anki](https://apps.ankiweb.net/) - The powerful, intelligent flashcard program.

