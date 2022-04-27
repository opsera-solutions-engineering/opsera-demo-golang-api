FROM golang:alpine
RUN mkdir /app 
RUN apk add git
ADD . /app/
WORKDIR /app 
RUN go build -o main .
RUN adduser -S -D -H -h /app appuser
USER appuser
CMD ["./main"]