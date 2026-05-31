FROM nginx:alpine
COPY ./titruc-website/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]