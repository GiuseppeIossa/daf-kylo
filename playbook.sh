#!/bin/bash -x

case $1 in

  all)
	kubectl apply -f kubernetes/config-map --recursive
	kubectl apply -f kubernetes/storage --recursive
	kubectl apply -f kubernetes/pvc --recursive
	kubectl apply -f kubernetes/deployment --recursive
	kubectl apply -f kubernetes/service --recursive
	;;
  elasticsearch)
	kubectl apply -f kubernetes/storage/elasticsearch.yaml
	kubectl apply -f kubernetes/pvc/elasticsearch.yaml
	kubectl apply -f kubernetes/deployment/elasticsearch.yaml
	kubectl apply -f kubernetes/service/elasticsearch.yaml
	;;
  activemq)
	kubectl apply -f kubernetes/storage/activemq.yaml
	kubectl apply -f kubernetes/pvc/activemq.yaml
	kubectl apply -f kubernetes/deployment/activemq.yaml
	kubectl apply -f kubernetes/service/activemq.yaml
	;;
  mysql)
	kubectl apply -f kubernetes/storage/mysql.yaml
	kubectl apply -f kubernetes/pvc/mysql.yaml
	kubectl apply -f kubernetes/deployment/mysql.yaml
	kubectl apply -f kubernetes/service/mysql.yaml
	;;
  kylo-spark)
	kubectl apply -f kubernetes/config-map/hadoop-config.yaml
	kubectl apply -f kubernetes/deployment/kylo-spark.yaml
	kubectl apply -f kubernetes/service/kylo-spark.yaml
	;;
  kylo-services)
	kubectl apply -f kubernetes/config-map/kylo-services.yaml
  	kubectl apply -f kubernetes/storage/kylo-services.yaml
  	kubectl apply -f kubernetes/pvc/kylo-services.yaml
  	kubectl apply -f kubernetes/deployment/kylo-services.yaml
  	kubectl apply -f kubernetes/service/kylo-services.yaml
	;;
esac
