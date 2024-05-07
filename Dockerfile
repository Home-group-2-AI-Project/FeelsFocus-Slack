FROM python:3

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m spacy download en_core_web_sm

COPY ./app .

EXPOSE 3000

CMD [ "gunicorn", "-b", "0.0.0.0:3000", "app:app"]
