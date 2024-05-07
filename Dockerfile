FROM python:3

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m spacy download en_core_web_sm

COPY ./app .

EXPOSE 5000

CMD [ "flask", "run", "-p", "3000"]
