FROM redis:6.0.10-alpine
COPY cluster.conf /cluster.conf
RUN chown redis:redis /cluster.conf && \
	apk update && \
	apk add iproute2-tc
CMD [ "redis-server", "/cluster.conf" ]
