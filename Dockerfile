FROM ubuntu:latest

# Install dependencies
RUN apt update -y
RUN apt install python3 python3-pip pipenv -y

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . /app/

# Install dependencies
RUN pipenv install --dev

# Expose port 80
EXPOSE 80

# Run the app
CMD pipenv run uvicorn main:app --host 0.0.0.0 --port 80
