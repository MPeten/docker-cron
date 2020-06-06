FROM alpine:latest

ENV HOME_DIR=/opt/crontab

RUN apk add --no-cache --virtual .run-deps bash jq \
	&& mkdir -p ${HOME_DIR}/jobs ${HOME_DIR}/logs

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["crond","-f"]
