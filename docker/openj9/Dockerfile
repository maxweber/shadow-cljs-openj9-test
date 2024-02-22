FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y -qq --no-install-recommends install wget ca-certificates

RUN wget --progress=dot:mega -O semeru.tar.gz https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.2%2B13_openj9-0.43.0/ibm-semeru-open-jdk_x64_linux_21.0.2_13_openj9-0.43.0.tar.gz \
 && mkdir -p /usr/lib/jvm/java-21-semeru \
 && tar -xzf semeru.tar.gz -C /usr/lib/jvm/java-21-semeru --strip-components 1\
 && rm -rf semeru.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/java-21-semeru
ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /app
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends nodejs npm
COPY package.json package-lock.json ./
RUN npm install
RUN npm ci
COPY resources ./resources
CMD ["npm", "run", "start"]
