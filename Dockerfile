FROM node:20-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /Django React Project
COPY . .
RUN yarn install --production
CMD ["node", "frontend/src/pages/Login.jsx"]