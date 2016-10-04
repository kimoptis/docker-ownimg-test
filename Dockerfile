FROM nginx:latest
RUN apt-get update
RUN echo "Je stinkt lelijkerd" > /usr/share/nginx/html/index.html
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR ./container-data
CMD cp /container-data/index.html /usr/share/nginx/html/index.html

