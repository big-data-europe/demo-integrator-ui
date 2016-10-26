hadoop:
	docker-compose -f docker-compose-hadoop.yml build
	docker-compose -f docker-compose-hadoop.yml up

spark:
	docker-compose -f docker-compose-spark.yml build
	docker-compose -f docker-compose-spark.yml up

flink:
	docker-compose -f docker-compose-flink.yml build
	docker-compose -f docker-compose-flink.yml up

solr-strabon-sextant:
	docker-compose -f docker-compose-solr-strabon-sextant.yml build
	docker-compose -f docker-compose-solr-strabon-sextant.yml up
