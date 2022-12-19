FROM python:3.11-alpine

RUN apk add ca-certificates \
    gcc \
    postgresql-dev \
    linux-headers \
    musl-dev \
    libffi-dev \
    jpeg-dev zlib-dev \
    postgresql-client \
    && pip install django-ninja


WORKDIR /usr/src
ADD requirements.txt .
RUN pip install -r requirements.txt
COPY . .

WORKDIR /usr/src/ppt_export_api
# RUN python /usr/src/ppt_export_api/manage.py collectstatic --no-input
RUN mkdir -p /mnt/data

EXPOSE 8000

CMD python /usr/src/ppt_export_api/manage.py runserver 0.0.0.0:8000