FROM python:3.8.13-slim

COPY ./requirements.txt app/requirements.txt
RUN python3 -m pip install -r app/requirements.txt
COPY . /app
WORKDIR /app

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run", "./src/app.py"]