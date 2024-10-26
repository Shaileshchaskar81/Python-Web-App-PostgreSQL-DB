# Use the official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Define environment variable for the PostgreSQL connection
ENV DATABASE_URL=postgresql://Atharva:lifeiscricket@1234@pyflaskgrp1.postgres.database.azure.com:5432/mydb

# Command to run the app
CMD ["flask", "run", "--host=0.0.0.0"]
