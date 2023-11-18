FROM ubuntu:latest
	LABEL mainteiner=artoiv2@mail.ru
	RUN apt-get update
	RUN apt-get -y install g++ nano net-tools inetutils-ping
	WORKDIR /root/docker_hello
	COPY . /root/docker_hello
	RUN g++ docker_hello.cpp -o docker_hello
	CMD ["./docker_hello"]