vi Dockerfile
FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]



vi docker-compose.yml
version: '3.8'

services:
  ubuntu:
    build: .
    container_name: ubuntu24-container
    stdin_open: true
    tty: true
    ports:
      - "8080:80"
    volumes:
      - ./app:/app




# Run
docker run -d -p 8080:80 --name nginx-server docker-ubuntu                                                                                                                       

docker-compose up -d


docker-compose exec ubuntu bash
docker-compose down
