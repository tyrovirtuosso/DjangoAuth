# Mutlistage dockerize react.js front end
# Build stage
FROM node:20-alpine as builder
LABEL maintainer="tyrovirtuosso@protonmail.com"

RUN apk add --no-cache libc6-compat
RUN npm i -g npm

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

COPY . .

# # test
# FROM builder as test
# WORKDIR /app
# CMD ["npm", "run", "test"]

# local development
FROM builder as dev
WORKDIR /app
EXPOSE 3000
CMD ["npm", "run", "dev"]

# # Production
# FROM nginx:1.24.0-alpine as production
# WORKDIR /app
# ENV NODE_ENV production
# # copy build from builder stage
# COPY --from=builder /app/build /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/conf.d/default.conf
# EXPOSE 3000
# CMD ["nginx", "-g", "daemon off;"]
