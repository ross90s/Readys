FROM python:3.7-alpine
MAINTAINER rohit
RUN mkdir /app
WORKDIR /app
COPY ./app /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
