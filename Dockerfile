FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

# CMD ["flask", "run", "--host=0.0.0.0"]
CMD ["python", "app.py"]
