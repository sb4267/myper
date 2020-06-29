FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /new_app

WORKDIR /new_app

ADD . /new_app/

RUN pip install django

CMD python manage.py runserver 0.0.0.0:$PORT
