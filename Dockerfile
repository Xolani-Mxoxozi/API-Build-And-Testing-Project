FROM python:latest
ADD . /test
# WORKDIR /test
EXPOSE 5000
# RUN pip install -r requirements.txt
RUN docker build .
RUN docker-compose up
ENTRYPOINT ["python", "main.py"]
