FROM alpine:3.6

MAINTAINER Ali Shaikh <ali.az.shaikh@gmail.com>

RUN apk add --no-cache sphinx

EXPOSE 9306 9312
VOLUME /var/lib/sphinx /etc/sphinx

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["searchd", "--nodetach"]
