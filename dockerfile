FROM alpine:latest

# Install OpenSSH and autossh
RUN apk update && apk add --no-cache openssh autossh

# Optional: Add a non-root user for better security
RUN adduser -D secure_link
USER secure_link

# Set default shell
ENTRYPOINT ["/bin/sh"]
