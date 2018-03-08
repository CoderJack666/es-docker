FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2
MAINTAINER Jack Du <dujiaxi@chachahzan.com>

RUN yum update && yum install -y zip
RUN mkdir -p /usr/share/elasticsearch/plugins/analysis-ik

RUN cd /usr/share/elasticsearch/plugins/analysis-ik && wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.2.2/elasticsearch-analysis-ik-6.2.2.zip && unzip elasticsearch-analysis-ik-6.2.2.zip