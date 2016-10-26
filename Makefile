hadoop:
	docker-compose -f docker-compose-hadoop.yml build
	docker-compose -f docker-compose-hadoop.yml up

spark:
	docker-compose -f docker-compose-spark.yml build
	docker-compose -f docker-compose-spark.yml up

