FROM alpine
RUN apk add --no-cache \
  openssh-client \
  ca-certificates \
  bash
