FROM tiangolo/uwsgi-nginx-flask:python3.8
COPY ./app/ /app/
WORKDIR /app
RUN pip install flask
EXPOSE 5000
CMD ["python", "main.py"]