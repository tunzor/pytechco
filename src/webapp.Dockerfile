FROM python:alpine

WORKDIR /usr/src/app

COPY webapp.py setup.py employee.py webapp.html .
COPY requirements-web.txt .

RUN pip install --no-cache-dir -r requirements-web.txt

ENTRYPOINT ["python", "./webapp.py"]