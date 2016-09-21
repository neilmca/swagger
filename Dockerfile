FROM node:6

RUN npm install swagger-ui
WORKDIR /node_modules/swagger-ui

RUN npm install
RUN npm run build

RUN mkdir ./dist/api
RUN mv ./dist/index.html ./dist/swagger-ui.html
COPY /api/core_jadmin1.0.yaml ./dist/api
COPY /api/core_transport7.0.yaml ./dist/api
COPY /api/core_web1.0.yaml ./dist/api
COPY /index.html ./dist


EXPOSE 8080
CMD ["npm", "run", "serve"] 

