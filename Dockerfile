#### Creates an environement containing Node, NPM and Angular. 

FROM node:latest

ENV ANGULAR_CLI_VERSION=1.6.1

### Python, & Git -------------------------------------------------

    RUN apt-get -qq update && \
		apt-get -qq install -y git --no-install-recommends
    RUN apt-get -qq update && \
		apt-get -qq install -y python && \
		rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
		apt-get autoremove -y && \
		apt-get clean


### Angular ---------------------------------------------
	RUN npm install --unsafe-perm -g @angular/cli@"ANGULAR_CLI_VERSION" findup-sync typescript && \
		npm cache verify

### User script ---------------------------------------------------

	RUN apt-get update && \
		apt-get install -y sudo && \
		rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
		apt-get autoremove -y && \
		apt-get clean


### Final setup--------------------------------------------------

	EXPOSE 4200

