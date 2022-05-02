# inherit from node v10
FROM node:10

# create directory for the source code
WORKDIR /usr/src/lafs

# install app dependencies
COPY package*.json ./
RUN npm install -g @angular/cli@v6-lts
RUN npm install

# uncomment below for production code
#RUN npm ci --only=production

# copy over app source code
COPY . . 

# expose the app port, tcp/4200
EXPOSE 4200

# run the angular server
CMD ng serve --host 0.0.0.0
