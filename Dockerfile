FROM node:14

# # Create app directory
WORKDIR /usr/src/app

ENV PORT=8080

# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
COPY package*.json ./

# RUN npm install
# # If you are building your code for production
RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]

# FROM node:14
# ENV NODE_ENV=production

# WORKDIR /app

#COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install --production

# COPY . .

# EXPOSE 8080
# CMD [ "npm", "start" ]

# CMD [ "node", "index.js" ]