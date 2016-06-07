FROM springxd/base
MAINTAINER Amol

USER root
COPY startup /opt/spring-xd/startup
RUN chown springxd:springxd /opt/spring-xd/start
RUN chmod u+x /opt/spring-xd/start
USER springxd

CMD ["/opt/spring-xd/startup"]
EXPOSE 9393
