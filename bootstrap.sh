#Tomado de: https://docs.rundeck.com/docs/administration/install/linux-deb.html#open-source-rundeck


#INSTALLING OPEN SOURCE RUNDECK
echo "deb https://rundeck.bintray.com/rundeck-deb /" | sudo tee -a /etc/apt/sources.list.d/rundeck.list
curl 'https://bintray.com/user/downloadSubjectPublicKey?username=bintray' | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install rundeck -y



#STARTING RUNDECK
sudo service rundeckd start

#To verify that the service started correctly, tail the logs:
#tail -f /var/log/rundeck/service.log

#The service is ready once you see something similar to:
#Grails application running at http://localhost:4440 in environment: production