FROM drone/drone-runner-docker:latest

COPY ./docker-entrypoint.sh /
RUN apk add --no-cache bash && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh", "/bin/drone-runner-docker"]