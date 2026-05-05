# Use a modern, supported Python image (Bookworm is the latest stable Debian)
FROM python:3.10-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install system dependencies
RUN apt update -y && apt install awscli -y

# Install project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
