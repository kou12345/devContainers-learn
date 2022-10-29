FROM python:3.9-buster


COPY requirements.txt .

# pip install を記載
RUN pip install -U pip \
    && pip install --no-cache-dir --upgrade -r requirements.txt

# uvicorn サーバー起動コマンド記載
CMD [ "uvicorn", "main:app", "--reload", "--port=8080", "--host=0.0.0.0" ]