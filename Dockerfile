FROM nginx:alpine
COPY saya_landing.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf.template
CMD sh -c "envsubst '\$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
