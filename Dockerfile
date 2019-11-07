FROM python:stretch

COPY . /app
WORKDIR /app


RUN pip3 install --upgrade pip3

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]