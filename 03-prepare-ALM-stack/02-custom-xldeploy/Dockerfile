FROM java:openjdk-7u65-jdk

# suppress warnings in apt-get that TERM is not set
ENV DEBIAN_FRONTEND=noninteractive

# update install and install required archives
RUN apt-get update && apt-get install -y wget git curl zip nano bzip2 vim

# remove downloaded archive files
RUN apt-get clean

# for main web interface:
VOLUME /ALMBOX
EXPOSE 4516

#start xldeploy
ENTRYPOINT ["/ALMBOX/data/deployit/inst01/server/bin/server.sh"]
