#the base image from which this image has to be built
FROM node       

#inside the container, this is the folder to which the build output
#of the app will be copied
WORKDIR /myangularapp

#copy all files from directory containing the Dockerfile to the 
#WORKDIR inside the container
COPY . .

#used to run commands inside a container
#There can be multiple RUN instructions
RUN npm install -g http-server

#tell the outside world that the app inside the container listens
#on port 9999
EXPOSE 9999

#command to run when the container is started
CMD ["http-server", "--port", "9999"]