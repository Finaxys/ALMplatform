FROM java:openjdk-7u65-jdk

# suppress warnings in apt-get that TERM is not set
ENV DEBIAN_FRONTEND=noninteractive

# update install and install required archives
RUN apt-get update && apt-get install -y wget git curl zip nano bzip2 vim

# remove downloaded archive files
RUN apt-get clean

RUN adduser --shell=/bin/bash --gecos '' almbox
# no password by default, uncomment to set one : RUN echo almbox:truc | chpasswd

#Copy private key into .ssh directory
#RUN mkdir -p /ALMBOX/scripts &&\
    #mkdir -p /ALMBOX/ssl &&\
    #mkdir -p /ALMBOX/scripts &&\
    #mkdir -p /ALMBOX/products &&\
    #mkdir -p /ALMBOX/data &&\
    #chown almbox:almbox /ALMBOX

USER almbox

# for main web interface:
EXPOSE 4516

VOLUME /ALMBOX/ssl
VOLUME /ALMBOX/scripts
VOLUME /ALMBOX/products
VOLUME /ALMBOX/data

#start xldeploy
#ENTRYPOINT ["/ALMBOX/scripts/deployit/deployit.sh"]
ENTRYPOINT ["/bin/bash"]
