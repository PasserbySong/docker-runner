FROM registry.cn-hangzhou.aliyuncs.com/chainone/centos7-jdk8
MAINTAINER xiejson <xiejson@foxmail.com>

ENV TZ Asia/Shanghai
WORKDIR /home

# -----------------------------------------------------------------------------
# 准备工作
# -----------------------------------------------------------------------------

RUN mkdir data && mkdir jira_home && mkdir jira 


# -----------------------------------------------------------------------------
# 安装java8环境
# -----------------------------------------------------------------------------
RUN  yum install -y unzip zip 

# -----------------------------------------------------------------------------
# 加入破解文件
# -----------------------------------------------------------------------------

COPY .bash_profile /home
COPY init.sh /home

COPY jira7.3.zip /home/data

# -----------------------------------------------------------------------------
# 下载jira
# -----------------------------------------------------------------------------

RUN cd /home/jira && wget https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-7.12.1.tar.gz &&  tar -zxvf atlassian-jira-software-7.12.1.tar.gz 

#ADD atlassian-jira-software-7.12.1.tar.gz /home/jira
RUN wget http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.42/mysql-connector-java-5.1.42.jar 
RUN \
	# cd /home/jira && tar -zxvf atlassian-jira-software-7.12.1.tar.gz && \
	unzip /home/data/jira7.3.zip -d /home/data/ && \
	# cp mysql-connector-java-5.1.42.jar /home/jira/atlassian-jira-software-7.12.1-standalone/atlassian-jira/WEB-INF/lib/ && \
	chmod 777 init.sh

CMD ["sh","init.sh"]