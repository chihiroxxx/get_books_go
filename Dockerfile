# FROM ubuntu:latest

# WORKDIR /home

# COPY "get-books-linux" .

# CMD [ "./get-books-linux" ]


FROM golang:latest

WORKDIR /go/src/get-books

# COPY go.mod .
# COPY go.sum .

COPY . .
RUN go mod download

RUN go build -o from-docker main.go
# CMD [ "go run main.go" ]

CMD [ "./from-docker" ]
