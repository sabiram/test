# Use the official Python image from DockerHub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY ./app ./app

VOLUME ["/code"]

# Specify the entry point for the application
CMD ["python", "app/main.py"]

