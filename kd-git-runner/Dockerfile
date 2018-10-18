FROM registry.cn-hangzhou.aliyuncs.com/ghoulich-centos/gitlab-maven-runner:3.5.2
RUN cd /home/gitlab-runner && mkdir .ssh && mkdir deploy
COPY id_rsa /home/gitlab-runner/.ssh/id_rsa
COPY id_rsa.pub /home/gitlab-runner/.ssh/id_rsa.pub
COPY known_hosts /home/gitlab-runner/.ssh/known_hosts
COPY deploy /home/gitlab-runner/deploy/deploy
COPY deploy-web /home/gitlab-runner/deploy/deploy-web
COPY start /home/gitlab-runner/deploy/start
ADD jdk-8u171-linux-x64.tar.gz /usr/local/
COPY .bash_profile /home/gitlab-runner/.bash_profile
COPY settings.xml /etc/maven/settings.xml
RUN \
	rpm -e --nodeps java-1.8.0-openjdk-devel-1.8.0.161-0.b14.el7_4.x86_64 && \
	rpm -e --nodeps python-javapackages-3.4.1-11.el7.noarch && \
	rpm -e --nodeps javapackages-tools-3.4.1-11.el7.noarch && \
	rpm -e --nodeps tzdata-java-2018c-1.el7.noarch && \
	rpm -e --nodeps java-1.8.0-openjdk-headless-1.8.0.161-0.b14.el7_4.x86_64 && \
	rpm -e --nodeps java-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64 && \	
	source /home/gitlab-runner/.bash_profile

RUN \
	wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz 
RUN \
	tar -xvf node-v8.12.0-linux-x64.tar.xz && mv node-v8.12.0-linux-x64/ nodejs/

RUN \
	ln -s /nodejs/bin/node /usr/local/bin/node && \
	ln -s /nodejs/bin/npm /usr/local/bin/npm  && \
	/nodejs/bin/npm install -g cnpm --registry=https://registry.npm.taobao.org 

RUN \
	ln -s /nodejs/bin/cnpm /usr/local/bin/  && \
	node -v && npm -v && cnpm -v

	