FROM python:3
RUN git clone git@github.com:wesselt/bunq2ynab.git
WORKDIR bunq2ynab
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./auto_sync.py"]
