FROM python:3.6.12-slim-buster

RUN pip install --upgrade pip \
 && pip install pipenv \
 && python --version ; pip --version ; pipenv --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
