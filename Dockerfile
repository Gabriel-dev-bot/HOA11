# Use an official base image
FROM ubuntu:22.04

# Install web and DB servers
RUN apt update && \
    apt install -y apache2 mysql-server && \
    apt clean

# Expose ports
EXPOSE 80 3306

# Start both services
CMD service apache2 start && service mysql start && tail -f /dev/null
