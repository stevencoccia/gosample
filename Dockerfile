# Use a base image
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Clone the Git repository
RUN git clone https://github.com/example/repo.git .

# Build the application
RUN go build -o gosample

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["./gosample"]
