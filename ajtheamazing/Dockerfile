FROM node:20

# COPY index.html main.css main.css.map /var/www/ajtheamazing.com
# COPY scripts images pages templates scripts var/www/ajtheamazing.com
WORKDIR /usr/app
COPY . .
RUN npm ci
ENV PATH /usr/app/node_modules/.bin:$PATH

EXPOSE 8080
CMD ["npm", "start"]
