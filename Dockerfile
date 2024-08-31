# Dockerfile for book_catalog microservice

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /book_catalog

# Copy the contents of the book_catalog directory into the container
COPY ./book_catalog /book_catalog

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /book_catalog/requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run main.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
