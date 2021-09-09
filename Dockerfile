FROM ubuntu:latest

WORKDIR /home

COPY "get-books-linux" .

CMD [ "./get-books-linux" ]
