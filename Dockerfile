FROM python:3.9-slim

ENV PORT=8080

USER root

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /data && mkdir /data/AIReader

EXPOSE 8080

CMD ["gunicorn", "app.server:app"]
