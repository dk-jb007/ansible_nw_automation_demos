docker run -d --name rabbitmq-mgmt1 -p 127.0.0.1:15672:15672 rabbitmq:3.6-management-alpine


curl -s -u guest:guest http://127.0.0.1:15672/api/vhosts | python -m json.tool


curl -s -u guest:guest http://127.0.0.1:15672/api/users | python -m json.tool