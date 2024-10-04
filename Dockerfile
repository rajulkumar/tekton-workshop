FROM registry.access.redhat.com/ubi8/python-312@sha256:0fa40f3e9f62da4147ce78b2034273528c98000598b724ed4dd0ca1cb6d0de60

LABEL maintainer="Ales Raszka <araszka@redhat.com>"
LABEL version="1.0"
LABEL description="This is a simple Python application that uses Flask to serve a simple web page."

EXPOSE 8080

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY app /app

WORKDIR /app

CMD ["python", "main.py"]