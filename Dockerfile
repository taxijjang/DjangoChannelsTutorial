FROM    python:3.8
ENV     PYTHONUNBUFFERED 1

RUN     mkdir /code
ADD     . /code
WORKDIR /code

RUN     pip install -r requirements.txt && python manage.py migrate