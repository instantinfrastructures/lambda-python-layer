FROM amazonlinux:latest

WORKDIR /app

RUN yum -y update \
 && yum -y install amazon-linux-extras \
 && amazon-linux-extras enable python3.8 \
 && yum -y clean metadata \
 && yum -y install python38 python38-pip python38-devel zip \
 && mkdir -p python/lib/python3.8/site-packages

COPY requirements.txt .

RUN pip3.8 install -r requirements.txt -t python/lib/python3.8/site-packages \
 && find python -d -type d -name "__pycache__" -exec rm -rf "{}" \; \
 && zip -9r python-layer.zip python

CMD ["/bin/bash"]

