FROM nginx:alpine
COPY saya_landing.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/templates/default.conf.template
