FROM node:18-alpine as build
USER root

WORKDIR /app
RUN pwd
COPY . .
#RUN npm install
RUN ls
#RUN npm run build
CMD serve -s build
EXPOSE 3000


FROM nginx:1.24-alpine3.17
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
