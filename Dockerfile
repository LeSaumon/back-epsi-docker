# Used instead of official python image to use the hot-reload on python files
FROM nikolaik/python-nodejs:latest
# Remove before production
RUN npm install -g nodemon

COPY requirements-epsi.txt /app/
COPY venv /app/venv
ADD src /app/eventbot

WORKDIR /app
RUN pip install -r requirements-epsi.txt

CMD [ "python3", "src/main.py"]