FROM golang:latest
LABEL maintainer="Daren Darrow <darrow@gmail.com>"
WORKDIR /app
RUN git clone https://github.com/darendarrow/vuln-list-update.git .
RUN go build .
CMD ["./vuln-list-update"]
