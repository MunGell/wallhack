FROM centos

RUN rpm -Uvh http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/epel-release-6-5.noarch.rpm
RUN rpm -Uvh http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-11.ius.centos6.noarch.rpm
RUN yum install git npm -y
RUN npm install harp -g
CMD ["server", "/mnt/cornerstone/public"]
ENTRYPOINT ["harp"]
EXPOSE 9000
VOLUME ["/mnt/cornerstone", "/vagrant/cornerstone"]