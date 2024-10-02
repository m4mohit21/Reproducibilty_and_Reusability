# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Run housing.py when the container launches
CMD ["python", "./housing.py"]
