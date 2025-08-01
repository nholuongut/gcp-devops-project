FROM python:3.8-slim-buster
MAINTAINER Nho Luong <luongutnho@hotmail.com>
WORKDIR /app

COPY requirements.txt requirements.txt 
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"] 