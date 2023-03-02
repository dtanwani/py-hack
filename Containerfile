FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN py_hack create-db
RUN py_hack populate-db
RUN py_hack add-user -u admin -p admin
EXPOSE 5000
CMD ["py_hack", "run"]
