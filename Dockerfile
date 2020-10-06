FROM golang:latest
LABEL maintainer="Daren Darrow <darrow@gmail.com>"
WORKDIR /app
COPY . .
RUN go build .
CMD ["./vuln-list-update"]
