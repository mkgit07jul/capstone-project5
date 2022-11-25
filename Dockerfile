FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
apk add --no-cache gcc musl-dev linux-headers
#COPY requirements.txt requirements.txt
#RUN pip install --upgrade pip &&\
 #   pip install --trusted-host pypi.phython.org -r requirements.txt
#EXPOSE 5000
COPY . .
CMD ["flask", "run"]
