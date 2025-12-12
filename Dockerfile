FROM python:3.14.2

ENV PYTHONUNBUFFERED 1

COPY . /code/
WORKDIR /code/

ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

EXPOSE 8000