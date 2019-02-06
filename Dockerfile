FROM python:latest
ADD . /test
WORKDIR /test
EXPOSE 5000
RUN pip3 install -r requirements.txt
sleep 1200
RUN apt-get instal update && apt-get install upgrade
ENTRYPOINT ["python", "main.py"]
