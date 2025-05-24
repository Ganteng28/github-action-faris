# Use the official Python image.
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Port Cloud Run expects
ENV PORT 8080

# Run the Flask app
CMD ["python", "app.py"]
