FROM golang:1.12.2-alpine as builder

WORKDIR /app
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM scratch
COPY --from=builder /app .

ENTRYPOINT ["./app"]
