# Use official Python image as base image
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Copy application files into container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 for the application
EXPOSE 80

# Command to run the FastAPI app with Uvicorn on port 80
# Specify the path to the main.py inside the src directory
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]

