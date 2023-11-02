#FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04
FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu20.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt update && apt install software-properties-common -y
#RUN apt update && add-apt-repository -y ppa:deadsnakes/ppa
#RUN apt install -y python3.10 python3.10-dev

#RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
#RUN update-alternatives --set python /usr/bin/python3.10

RUN apt update && apt install -y git vim sudo curl wget apt-transport-https ca-certificates gnupg libgl1
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
# install python3-pip
#RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3
RUN apt install -y python3-pip
RUN apt update && apt install -y ninja-build

#RUN pip3.10 install setuptools
# install dependencies via pip
# Only install jax/jaxlib to version 0.4.1 for st
#RUN pip3.10 install numpy scipy six wheel
RUN pip3 install setuptools numpy scipy six wheel

ADD requirements.txt reqs.txt
RUN pip3 install -r reqs.txt

RUN pip3 install torch==1.10.0+cu113 torchvision==0.11.0+cu113 torchaudio==0.10.0 -f https://download.pytorch.org/whl/torch_stable.html

WORKDIR /home/

