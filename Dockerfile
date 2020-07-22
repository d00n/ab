FROM python:3
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN    apt-get upgrade -y 
RUN	apt-get update 
RUN	apt-get install apt-file -y
RUN	apt-file update 
RUN	apt-get install vim nginx -y

RUN mkdir /code
COPY . /code/
WORKDIR /code
RUN pip install --no-cache-dir -r requirements.txt 

# CMD [ "python", "/code/manage.py", 'runserver', '0.0.0.0:8000:8000']
CMD ["gunicorn", "-b", "0.0.0.0:8000", "ab.wsgi"]
