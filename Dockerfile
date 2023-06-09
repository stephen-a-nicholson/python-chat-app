FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask==2.1.*

# install app
COPY chat_app.py /

ENV FLASK_APP=chat_app.py
EXPOSE 8000
CMD flask run --host 0.0.0.0 --port 8000
