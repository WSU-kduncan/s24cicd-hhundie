# we will be using nginx to run our server
FROM nginx:latest
# we will use the html file i create
COPY ./index.html /usr/share/nginx/html/index.html
# serve this contant on port 8080
EXPOSE 80
