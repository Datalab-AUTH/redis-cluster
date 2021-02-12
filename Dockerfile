FROM redis:alpine
COPY cluster.conf /cluster.conf
RUN chown redis:redis /cluster.conf
CMD [ "redis-server", "/cluster.conf" ]
