FROM python:3.10-slim

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY . .
RUN ls
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "/usr/src/app/main.py"]
