# syntax=docker/dockerfile:1
FROM golang:1.21 AS build
WORKDIR /src
COPY . .
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux go build -o /bin/hello main.go

FROM alpine:latest
COPY --from=build /bin/hello /bin/hello
EXPOSE 3000
CMD ["/bin/hello"]
