#!/bin/bash

HOSTS="hadoop.sc1.big-data-europe.eu hdfsfb.sc1.big-data-europe.eu spark.sc1.big-data-europe.eu solr.sc1.big-data-europe.eu flink.sc1.big-data-europe.eu strabon.sc1.big-data-europe.eu sextant.sc1.big-data-europe.eu frontend.sc1.big-data-europe.eu"

for host in $HOSTS; do
  echo "127.0.0.1 $host" | sudo tee -a /etc/hosts; 
done

