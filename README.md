# docker-demo-integrator-ui

<p align="left">
  <h3>Styling progress
    <img src="http://progressed.io/bar/33" height="40"></h3>
</p>

## List of components

Component | Used_in | Done?
--- | --- | ---
Apache Flume | SC2, SC6 | **NO**
Apache Kafka | SC2, SC4, SC6 | **NO**
Apache Spark | SC2, SC4, SC6, SC7 | YES
Apache Flink | SC4 | **PARTIALLY**
HDFS | SC2, SC4, SC6, SC7 | YES
Hue FileBrowser | Demos | YES
Apache Cassandra | SC4, SC7 | **NO**
OpenLink Virtuoso | SC1, SC2, SC6 | **NO**
4store | SC1, SC2, SC6 | **NO**
Strabon | SC7 | YES
Sextant | SC7 | YES
GeoTriples | SC7 | **NO**
SEMAGROW Engine | SC7 | **NO**
UnifiedViews | SC2, SC6 | **NO**
PoolParty | SC2, SC6 | **NO**

Total components used in societal challenges: 15<br/>
Styling done: 5

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

## TODOs
* Resource manager is not reachable
