FROM python:3-slim-buster

# Create app directory
WORKDIR /code

RUN apt-get update && apt-get install nano

# Install app dependencies
COPY requirements.txt ./

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

# create alias
RUN ln -s /usr/bin/python3 /usr/bin/python & \
    ln -s /usr/bin/pip3 /usr/bin/pip

# Bundle app source
COPY code /code