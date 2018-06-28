FROM alpine:3.6

MAINTAINER Ali Shaikh <ali.az.shaikh@gmail.com>

RUN apk add --no-cache sphinx

RUN touch /etc/sphinx/sphinx.conf
RUN mkdir -p /var/run/sphinx/
RUN mkdir -p /var/log/sphinx/
RUN touch /var/log/sphinx/searchd.log
RUN mkdir -p /var/lib/sphinx/catalystsandbox
RUN mkdir -p /var/lib/sphinx/catalystdev
RUN mkdir -p /var/lib/sphinx/catalystsandbox
RUN mkdir -p /var/lib/sphinx/catalyst
RUN mkdir -p /var/lib/sphinx/catalystqa

EXPOSE 9306 9312
VOLUME /var/lib/sphinx /etc/sphinx

CMD ["searchd", "--nodetach"]
