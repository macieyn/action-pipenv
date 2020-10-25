FROM python:3.6.12-slim-buster
# https://stackoverflow.com/questions/63143360/how-do-you-use-pipenv-in-a-github-action
ENV WORKON_HOME /root
ENV PIPENV_PIPFILE /Pipfile

RUN pip install --upgrade pip \
 && pip install pipenv \
 && python --version ; pip --version ; pipenv --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
