FROM python:3.11.0-alpine

# This prevents Python from writing out pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# This keeps Python from buffering stdin/stdout
ENV PYTHONUNBUFFERED 1

#EXPOSE 8000

WORKDIR /dockerdjango

COPY requirements.txt ./dockerdjango/requirements.txt

RUN python -m pip install --no-cache-dir --upgrade pip -r /dockerdjango/requirements.txt

COPY . /dockerdjango