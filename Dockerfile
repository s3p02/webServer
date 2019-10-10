FROM python:3

ADD configs.yaml /

ADD server.py /

ADD requirements.txt /

ADD index.html /

RUN pip3 install -r requirements.txt

CMD [ "python3", "./server.py" ]