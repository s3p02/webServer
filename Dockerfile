FROM centos:7

ADD configs.yaml /

ADD server.py /

ADD requirements.txt /

ADD index.html /

RUN yum update -y \
    && yum -y install git \
    && yum -y install yum-utils \
    && yum -y groupinstall development \
    && yum install -y https://centos7.iuscommunity.org/ius-release.rpm \
    && yum -y install python36u python36u-devel 

RUN pip3 install -r requirements.txt

CMD [ "python3", "./server.py" ]