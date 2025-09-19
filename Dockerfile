<<<<<<< HEAD
#pull base image

FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install

CMD ["npm","start"]
=======
# Base Image
FROM python:3.11-slim

WORKDIR /app

# Copy the requirements file into the container
COPY flask.dependencies .

# Install dependencies
RUN pip install --no-cache-dir -r flask.dependencies

# Copy the Flask app source code
COPY flask.app .

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "flask.app"]



>>>>>>> 8c39963 (my second code on git hub)

