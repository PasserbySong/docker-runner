#!/bin/bash


source /home/.bash_profile

echo "source /home/.bash_profile" 

if [ ! -e "/home/jira/atlassian-jira-software-7.12.1-standalone/atlassian-jira/WEB-INF/lib/mysql-connector-java-5.1.42.jar" ]
then 
	cp mysql-connector-java-5.1.42.jar /home/jira/atlassian-jira-software-7.12.1-standalone/atlassian-jira/WEB-INF/lib/
fi

sh /home/jira/atlassian-jira-software-7.12.1-standalone/bin/start-jira.sh -fg
