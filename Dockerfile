FROM golang:1.19-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN apk update && apk add git
COPY go.mod go.sum ./
RUN go mod download
EXPOSE 8080
CMD ["go", "run", "main.go"]