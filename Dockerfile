FROM python:3.11.0-alpine

# This prevents Python from writing out pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# This keeps Python from buffering stdin/stdout
ENV PYTHONUNBUFFERED 1

#EXPOSE 8000

WORKDIR /dockerdjango

COPY requirements.txt ./dockerdjango/requirements.txt
COPY .env .

RUN python -m pip install --upgrade pip

RUN pip install -r ./dockerdjango/requirements.txt

COPY . /dockerdjango