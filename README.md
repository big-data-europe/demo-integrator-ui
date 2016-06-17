# docker-demo-integrator-ui
Showcase the demo for integrator UI with Hadoop, HDFS browser, Spark, Flink, Strabon, Sextant, and Solr.

## About this demo

This demo runs docker containers for:
* [Hadoop](https://github.com/big-data-europe/docker-hadoop)
* [HDFS Browser (Hue)](https://github.com/big-data-europe/docker-hdfs-filebrowser)
* [Spark](https://github.com/big-data-europe/docker-spark)
* [Flink](https://github.com/big-data-europe/docker-flink)
* [Solr](https://github.com/big-data-europe/solr)
* [Strabon](https://github.com/big-data-europe/docker-strabon)
* [Sextant](https://github.com/big-data-europe/docker-sextant)

The containers are exposed using nginx server ('nginx' service in docker-compose.yml) under .sc1.big-data-europe.eu namespace. For example, Hadoop is accessible under hadoop.sc1.big-data-europe.eu. The complete configuration can be found under ./frontend/default.conf.
Beside exposing Hadoop under publicly available URL, nginx injects BDE specific CSS:
```
#
# Hadoop block
#

server {
    listen       80;
    server_name  hadoop.sc1.big-data-europe.eu;

    root /data;
    gzip on;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Accept-Encoding "";
    }

    location /bde-css/ {
    }
}

server {
  listen 127.0.0.1:8000;
  location / {
      proxy_pass http://127.0.0.1:8001;
      sub_filter '</head>' '<link rel="stylesheet" type="text/css" href="/bde-css/materialize.min.css">
      <link rel="stylesheet" type="text/css" href="/bde-css/bde-hadoop.css"></head>';
      sub_filter_once on;
      proxy_set_header Accept-Encoding "";
  }
}

server {
  listen 127.0.0.1:8001;
  gunzip on;
  location / {
    proxy_pass http://namenode:50070;
    proxy_set_header Accept-Encoding gzip;
  }
}
```
As we can see from the configuration, request to hadoop.sc1.big-data-europe.eu will be proxied through 127.0.0.1:8000 and 127.0.0.1:8001. :8001 explicitly retrieves gzip'ed content from namenode and decompresses it (sub_filter directive works only on uncompressed content). :8000 injects required CSS stylesheets right before ```</head>``` tag.

## How to run

To run the demo locally, you will need to modify your /etc/hosts file. There is a Makefile, which will do it automatically for you (don't forget to clean up your /etc/hosts after demo):
```
  make hosts
```

After this you can start the demo as follows:
```
  docker create network hadoop
  docker-compose up
```

The containers may start in the wrong order and some of them might exit. Then you will need to review the status of your running containers with:
```
  docker ps
```
and restart necessary containers (the most likely to fail are 'flink-master', 'nginx')

Navigate to http://frontend.sc1.big-data-europe.eu in your browser to see the demo application.
