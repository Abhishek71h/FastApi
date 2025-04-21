
# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install dependencies using pip instead of pipenv
RUN pip install --no-cache-dir -r requirement.txt

# Expose the port FastAPI runs on
EXPOSE 80

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]
