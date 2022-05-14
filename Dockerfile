FROM golang:1.17.8-bullseye

WORKDIR /factory

# set up tools
RUN apt-get update && apt-get upgrade -y

# install nodejs
RUN apt-get install nodejs -y

# install npm
RUN apt-get install npm -y

# insatll prettier
RUN npm install -g prettier

# install ts-publish-setup
RUN go install github.com/m3o/m3o-client-gen/ts-publish-setup@main


COPY entrypoint.sh /entrypoint.sh

# change permission to execute entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]