# docker-demo-integrator-ui

<p align="left">
  <h3>Styling progress
    <img src="http://progressed.io/bar/100" height="40"></h3>
</p>

## List of components

Component | Used_in | Done?
--- | --- | ---
Apache Flume | SC2, SC6 | NONE
Apache Kafka | SC2, SC4, SC6 | NONE
Apache Spark | SC2, SC4, SC6, SC7 | YES
Apache Flink | SC4 | YES
HDFS | SC2, SC4, SC6, SC7 | YES
Hue FileBrowser | Demos | YES
Apache Cassandra | SC4, SC7 | NONE
Strabon | SC7 | YES
Sextant | SC7 | YES
GeoTriples | SC7 | NONE
SEMAGROW Engine | SC7 | YES

Components not modified for copyright reasons:
Component | Used_in
--- | --- | ---
OpenLink Virtuoso | SC1, SC2, SC6
4store | SC1, SC2, SC6
PoolParty | SC2, SC6

Total components used in societal challenges: 15<br/>

## About this demo

This demo showcase interfaces for the above mentioned components.

## How to run

## Deploying one component

First inject hostnames to your /etc/hosts for local deployment:
```
./edit-hosts.sh
```

To start Hadoop deployment with HDFS FileBrowser run:
```
make hadoop
```

Navigate to ```namenode.big-data-europe.aksw.org``` or ```integrator-ui.big-data-europe.aksw.org``` to see the interface.

## Deploying integrator demo
You will need to rewrite your DNS to point to the particular server. In our case everything is deployed on a single machine for demo purposes and DNS entry ```*.big-data-europe.aksw.org``` is pointing to that machine. To deploy the required components simply run e.g.:
```
make hadoop
```

## Available commands
```
make hadoop
make spark
make flink
make solr-strabon-sextant
```

## Special note for SemaGrow
After deploying SemaGrow will be accessible on http://semagrow.big-data-europe.aksw.org/SemaGrow/
