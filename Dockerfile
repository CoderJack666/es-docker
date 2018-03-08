FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2
MAINTAINER Jack Du <dujiaxi@chachahzan.com>

ADD analysis-ik /usr/share/elasticsearch/plugins/analysis-ik