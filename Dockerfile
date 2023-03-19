FROM golang:1.20.2

WORKDIR /app

COPY go.mod ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o main .

CMD ["/app/main"]
