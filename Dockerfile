# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Create required folders
RUN mkdir -p /home/node/.n8n

# Set permissions (important for config)
RUN chown -R node:node /home/node && chmod -R 700 /home/node/.n8n

# Switch to non-root user
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]

