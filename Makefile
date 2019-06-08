start:
	docker run --rm -d -p 3000:5000 -v `pwd`:/app:ro khe/server

stop:
	docker ps -f "status=running" -f "ancestor=khe/server" | grep khe/server | awk '{ print "docker kill " $$1 }' | sh

test:
	docker run --name khe-server-test --rm -d -v `pwd`:/app:rw khe/server 
	docker exec khe-server-test pytest
	make stop

build:
	docker build -t khe/server .
