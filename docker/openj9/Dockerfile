FROM adoptopenjdk/openjdk15-openj9:latest
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
COPY package.json package-lock.json ./
RUN npm ci
COPY resources ./resources
CMD ["npm", "run", "start"]
