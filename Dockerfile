FROM node:latest

# Set timezone
ENV TZ=Europe/Paris
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends tzdata && apt-get clean

# Install Bitwarden CLI
RUN npm install -g @bitwarden/cli

# Import the script
WORKDIR /data
RUN mkdir -p /data/result
COPY backup.sh .
RUN chmod +x backup.sh

ENTRYPOINT [ "/data/backup.sh" ]