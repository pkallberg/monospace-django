FROM python:2.7.8
EXPOSE 8000
 
RUN mkdir -p /usr/src/app
COPY requirements.txt /usr/src/requirements.txt
 
WORKDIR /usr/src/python
RUN pip install -r /usr/src/requirements.txt
 
WORKDIR /usr/src/app
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
