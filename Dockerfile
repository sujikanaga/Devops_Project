FROM nginx:alpine

# Copy the HTML, CSS, and other static files to the Nginx web server directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]