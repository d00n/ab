FROM python:3
ENV PYTHONUNBUFFERED 1

#RUN apt-get apt-get update && apt-get upgrade -y && \
#	update  && \
#	apt-get install apt-file  && \
#	apt-file update  && \
#	apt-get install vim

RUN mkdir /code
COPY . /code/
WORKDIR /code
RUN pip install --no-cache-dir -r requirements.txt 

CMD [ "python", "./code/manage.py runserver 0.0.0.0:8000:8000"]
