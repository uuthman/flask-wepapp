FROM python:3.11.9-alpine3.20

ENV FLASK_APP=board:create_app
ENV FLASK_ENV=development


WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]