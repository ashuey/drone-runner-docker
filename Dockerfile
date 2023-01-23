FROM drone/drone-runner-docker:latest

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh", "/bin/drone-runner-docker"]