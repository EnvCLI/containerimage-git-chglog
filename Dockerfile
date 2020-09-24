############################################################
# Dockerfile
############################################################

# Set the base image
FROM docker.io/alpine:latest

############################################################
# Installation
############################################################
RUN apk add --no-cache bash curl git > /dev/null &&\
    curl -L -o /usr/local/bin/git-chglog https://github.com/PhilippHeuer/git-chglog/releases/download/v1.0.0/git-chglog_linux_amd64 &&\
	apk del --no-cache curl > /dev/null


############################################################
# Execution
############################################################
CMD [ "git-chglog", "--help" ]
