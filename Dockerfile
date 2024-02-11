# Use the httpd base image
FROM httpd:latest

# Copy custom configuration files if needed
# COPY ./path/to/custom/config/httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy web files to the server root
COPY ./path/to/your/web/files /usr/local/apache2/htdocs/

# Copy the startup script
COPY start-httpd.sh /usr/local/bin/start-httpd.sh

# Set execute permissions on the script
RUN chmod +x /usr/local/bin/start-httpd.sh

# Expose port 80
EXPOSE 80

# Set the startup command
CMD ["/usr/local/bin/start-httpd.sh"]
