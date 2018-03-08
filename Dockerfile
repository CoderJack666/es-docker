FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2
MAINTAINER Jack Du <dujiaxi@chachahzan.com>

RUN yum update && yum install -y zip
RUN mkdir -p /usr/share/elasticsearch/plugins/analysis-ik

copy elasticsearch-analysis-ik-6.2.2.zip /usr/share/elasticsearch/plugins/analysis-ik

RUN cd /usr/share/elasticsearch/plugins/analysis-ik && unzip elasticsearch-analysis-ik-6.2.2.zip