FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2
MAINTAINER Jack Du <dujiaxi@chachahzan.com>

COPY elasticsearch-analysis-ik-6.2.2.zip /usr/share/elasticsearch/plugins/

USER root

RUN cd /usr/share/elasticsearch/bin
RUN elasticsearch-plugin install file:///usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.2.2.zip
RUN rm -rf /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.2.2.zip