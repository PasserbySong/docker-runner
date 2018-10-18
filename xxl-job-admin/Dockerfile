FROM registry.cn-hangzhou.aliyuncs.com/chainone/centos7-jdk8
ENV TZ Asia/Shanghai

#### 设置工作目录
WORKDIR /home

#### 设置编码
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

#### 安装tomcat 
RUN \ 
	wget http://mirrors.shu.edu.cn/apache/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz && \
	tar -zxvf  apache-tomcat-8.5.34 && \
	mkdir tomcat && mv apache-tomcat-8.5.34 tomcat

#### 启动脚本
ENTRYPOINT ["sh","/home/tomcat/bin/startup.sh"]