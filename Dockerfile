FROM python:latest
FROM ubuntu:latest
ADD . /test
WORKDIR /test
EXPOSE 5000
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "main.py"]
