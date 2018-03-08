FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2
MAINTAINER Jack Du <dujiaxi@chachahzan.com>

COPY elasticsearch-analysis-ik-6.2.2.zip /usr/share/elasticsearch/plugins/

USER root

RUN elasticsearch-plugin install file:///usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.2.2.zip
# RUN elasticsearch-plugin isntall https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.2.2/elasticsearch-analysis-ik-6.2.2.zip
RUN rm -rf /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.2.2.zip