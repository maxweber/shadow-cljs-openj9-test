FROM adoptopenjdk/openjdk15:latest
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
COPY package.json package-lock.json ./
RUN npm ci
COPY resources ./resources
CMD ["npm", "run", "start"]
