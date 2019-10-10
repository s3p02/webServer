#WEB SERVER

https://www.afternerd.com/blog/python-http-server/

#PYTHON3
```
sudo yum -y install yum-utils
sudo yum -y groupinstall development
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y install python36u
python3.6 -V
sudo yum -y install python36u-devel
which python3
```

#VIRTUALENV
```virtualenv -p /bin/python3 venv```

```source venv/bin/activate```

#RUN
```bash prep.sh```
```python server.py```