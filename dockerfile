FROM centos:7

COPY docker-entrypoint.sh /ver/tmp

RUN mv /var/tmp/docker-entrypoint.sh /user/local/bin; \
    chmod +x /usr/local/bin/docker-entrypoint.sh;

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "echo", "herro world !!" ]

