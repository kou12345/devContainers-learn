FROM python:3.7

WORKDIR /workspace

COPY /app/requirements.txt .

# pip install を記載
RUN pip install -U pip \
    && pip install --no-cache-dir --upgrade -r requirements.txt