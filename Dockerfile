FROM amazonlinux:2023

ADD requirements.txt requirements.txt
RUN dnf install -y pip vim && pip3 install -r requirements.txt

