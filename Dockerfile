FROM python:3.8.13-slim

COPY . app/
WORKDIR /app
RUN python3 -m pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run", "app.py"]