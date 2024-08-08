#use the official Node.js image
FROM node:20

#set the working directory in the container
WORKDIR /usr/src/app

#copy package.json and package.lock into the container
COPY package*.json ./

#install app dependencies
RUN npm install

#Copy rest of the application into the container
COPY ..

#Expose port 3000 for the application
EXPOSE 3000

#Define the command to run the application
CMD ["node", "app.js"]
