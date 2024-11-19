# Use the official Golang image
FROM golang:1.20

# Set working directory
WORKDIR /app

# Copy the GitHub token as an environment variable
ARG GITHUB_TOKEN
ENV GITHUB_TOKEN=${GITHUB_TOKEN}

# Clone the private repository using the token
RUN git clone https://${GITHUB_TOKEN}@github.com/stevencoccia/gosample.git .

# Build the Go application
RUN go build -o gosample

# Expose the port
EXPOSE 8080

# Run the application
CMD ["./gosample"]
