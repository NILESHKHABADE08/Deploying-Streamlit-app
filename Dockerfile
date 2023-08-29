FROM python:3.7

EXPOSE 8501



WORKDIR /app

COPY requirements.txt ./requirements.tx

RUN pip3 install -r requirements.txt

COPY ./app

ENTRYPOINT ["streamlet", "run", "StreamlitAppImerys.py", "--server.port=8501", "--server.address=0.0.0.0"]
