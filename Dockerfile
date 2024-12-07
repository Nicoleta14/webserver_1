FROM python:3.9-slim

WORKDIR /app

# Copiem aplicația în container.
COPY app.py /app

# Instalăm dependențele necesare.
RUN pip install flask redis

# Expunem portul 5000 pentru aplicația Flask.
EXPOSE 5000

# Specificăm comanda de rulare.
CMD ["python", "app.py"]
