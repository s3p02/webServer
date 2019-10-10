FROM python:3

ADD configs.yaml /

ADD server.py /

ADD requirements.txt /

ADD index.html /

RUN pip install -r requirements.txt

CMD [ "python", "./server.py" ]