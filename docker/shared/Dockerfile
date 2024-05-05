
FROM mhart/alpine-node:4
RUN apk add --no-cache make gcc g++ python git iputils drill net-tools
ADD app /app/
#ADD app/package.json /app/
WORKDIR app
RUN npm install
