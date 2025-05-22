# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your calculator static files to Nginx html folder
COPY cal.html /usr/share/nginx/html/index.html
COPY style.css script.js th.jpg /usr/share/nginx/html/

EXPOSE 80