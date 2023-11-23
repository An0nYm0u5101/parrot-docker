FROM python:3.10.13

ENV PYTHONUNBUFFERED 1

COPY . /code/
WORKDIR /code/

ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

EXPOSE 8000