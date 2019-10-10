#WEB SERVER

https://www.afternerd.com/blog/python-http-server/

#GIT
``````sudo yum -y install git``````

#CLONE
``` git clone https://github.com/s3p02/webServer.git```
```cd webserver```
#PYTHON3

```chmod a+x prep.sh```
```bash prep.sh```

#VIRTUALENV
```virtualenv -p /usr/bin/python3 venv```

```source venv/bin/activate```

#RUN

```python server.py```

#DOCKER
```docker build -t webserver-py3 .```
```docker run -p 38080:38080 webserver-py3```