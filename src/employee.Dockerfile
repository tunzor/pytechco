FROM python:alpine

WORKDIR /usr/src/app

COPY employee.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "./employee.py"]