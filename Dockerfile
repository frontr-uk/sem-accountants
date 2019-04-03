
# get image from docker hub
FROM node:8.11.1

# add author
MAINTAINER Chris Tarasovs <chris@frontr.co.uk>

# copy project files to image
COPY . /app

# specify working directory

RUN npm install global http-server

WORKDIR /app
# Expose port for the container
EXPOSE 8080

#RUN npm run start
# Start server
#CMD ["http-server", "-s"]
#CMD [ "http-server ./index.html -p 9002" ]
#CMD ["http-server ./index.html -s -p 9002"]
