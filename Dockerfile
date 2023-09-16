# Use an official PHP runtime as a parent image
FROM php:8.2-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Install any PHP extensions or dependencies your app requires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy your PHP application files to the container
COPY . .

# Copy Firstcampaign.php to index.php (our new entry point)
RUN cp Firstcampaign.php index.php

# Expose port 80 for Apache
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
