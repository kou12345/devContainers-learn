FROM python:3.9-buster

WORKDIR /workspace

COPY requirements.txt .

# pip install を記載
RUN pip install -U pip \
    && pip install --no-cache-dir --upgrade -r requirements.txt