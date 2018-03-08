FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2
MAINTAINER Jack Du <dujiaxi@chachahzan.com>

ADD elasticsearch-analysis-ik-6.2.2.zip /usr/share/elasticsearch/plugins/analysis-ik