FROM python:3.12-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && \
  pip install --no-cache-dir -r requirements.txt

COPY . .

FROM builder AS runner

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "app.py"]
