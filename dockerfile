FROM node:14
WORKDIR /usr/src/app
RUN npm install
COPY . .
EXPOSE 8080

CMD [ "node", "count-server.js" ]

# docker build -t count-server .
# docker run -p 8080:8080 -d count-server
# docker login # we identify ourselves
# docker tag count-server:latest sylare/count-server:latest
# docker push sylare/count-server:latest

