FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y boinc

ENV ROSETTA_AT_HOME_ACCOUNT_KEY=""

ADD cc_config.xml /var/lib/boinc-client/
ADD bin/start-rah.sh /usr/bin/

RUN chmod +x /usr/bin/start-rah.sh

WORKDIR /var/lib/boinc

CMD ["/usr/bin/start-rah.sh"]
