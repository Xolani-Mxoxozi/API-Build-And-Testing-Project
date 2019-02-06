FROM python:latest
ADD . /test
WORKDIR /test
EXPOSE 5000
# RUN pip3 install -r requirements.txt
ENTRYPOINT ["python", "main.py"]
