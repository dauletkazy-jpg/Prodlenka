FROM nginx:alpine
COPY saya_landing.html /usr/share/nginx/html/index.html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/templates/default.conf.template
