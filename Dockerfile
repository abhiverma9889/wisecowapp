FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    cowsay \
    fortune-mod \
    netcat-openbsd \
    && apt-get clean

# Workdir
WORKDIR /app

# Copy script
COPY app.sh .

# Make script executable
RUN chmod +x app.sh

EXPOSE 8000

CMD ["./app.sh"]
