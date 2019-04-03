
# get image from docker hub
FROM node:8.11.1

# add author
MAINTAINER Chris Tarasovs <chris@frontr.co.uk>

# copy project files to image
COPY . /app

# specify working directory
WORKDIR /app
RUN npm install
RUN npm install global http-server

# Expose port for the container
EXPOSE 9002

#RUN npm run start
# Start server
#CMD [ "http-server ./index.html -p 9002" ]
