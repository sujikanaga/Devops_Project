# Use official Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML files into the nginx folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
