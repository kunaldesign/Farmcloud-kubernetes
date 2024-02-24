# Base Image
FROM python:3

EXPOSE 8000
WORKDIR /igh

ENV IGH_POSTGRES_USER="" IGH_POSTGRES_PASSWORD="" IGH_POSTGRES_HOST="" IGH_POSTGRES_PORT="" IGH_POSTGRES_DB=""

COPY app /igh/app/
COPY wsgi.py /igh/
COPY __init__.py /igh/
COPY requirements.txt /igh/


RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install psycopg2-binary

ENTRYPOINT ["gunicorn"]
CMD ["--bind=0.0.0.0", "--reload", "wsgi:app"]
