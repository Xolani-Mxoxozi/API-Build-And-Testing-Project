FROM python
ADD . /test
WORKDIR /test
EXPOSE 5000
# RUN sudo pip install -r requirements.txt
ENTRYPOINT ["python", "main.py"]
