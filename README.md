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

This demo runs docker containers for above mentioned components.

## How to run

## Deploying one component

```
docker-compose up csswrapper
docker-compose up namenode datanode1
```

## Deploying integrator demo
