FROM ubuntu:latest

# Update the package manager and install the necessary dependencies
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

WORKDIR /usr/src/app/frontened6

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm","run","dev"]