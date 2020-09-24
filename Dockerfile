############################################################
# Build Stage
############################################################
# Set the base image
FROM docker.io/golang:1.15

# Build
RUN go get -u github.com/PhilippHeuer/git-chglog/cmd/git-chglog

############################################################
# Dockerfile
############################################################

# Set the base image
FROM docker.io/alpine:latest

############################################################
# Installation
############################################################
RUN apk add --no-cache git
COPY --from=0 /go/bin/git-chglog /usr/local/bin/git-chglog

############################################################
# Execution
############################################################
CMD [ "git-chglog", "--help" ]
