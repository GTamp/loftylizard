FROM alpine as build
# pinned to specific version

WORKDIR /app

COPY . .

RUN apk add --update nodejs npm

RUN npm install

# --- 

CMD ["npm", "start"]