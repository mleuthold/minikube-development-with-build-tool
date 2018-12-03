docker run -it --rm -e hello=world busybox env

docker build -t my-hello-world .

docker run -it --rm -e hello=world -e SERVICES_EXAMPLE_TEXT=hehe my-hello-world /bin/bash -c "/tmp/hello-world.sh && cat /app/example/example.conf"
