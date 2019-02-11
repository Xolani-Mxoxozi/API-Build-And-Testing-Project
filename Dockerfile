FROM python:latest
ADD . /test
# WORKDIR /test
EXPOSE 5000
# RUN pip install -r requirements.txt


# FROM nginx:mainline-alpine

# --- Python Installation ---
RUN python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python /usr/bin/python; fi && \
    rm -r /root/.cache

# --- Work Directory ---
WORKDIR /usr/src/app

ENTRYPOINT ["python", "main.py"]
