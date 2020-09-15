#!/bin/sh

# Format
echo "curl localhost:9200/INDEX to go directly to elasticsearch"

# Example
curl -X PUT "localhost:9200/customer/_doc/1?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "John Doe"
}
'

# Equivalent
curl -X GET "localhost:9200/customer/_doc/1?pretty"
# or, on the console
GET /customer/_doc/1

# Check elastic (local default):
curl http://localhost:9200/
# Check kibana:
http://localhost:5601/


# Launch logstash just to check
bin/logstash -e 'input { stdin { } } output { stdout {} }'
