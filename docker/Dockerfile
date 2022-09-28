FROM python:3

RUN echo "alias ls='ls --color=auto'" >> /root/.bashrc
RUN echo "alias ll='ls --color=auto -l'" >> /root/.bashrc

WORKDIR /workspace

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
	git \
	wget
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# install poetry
ENV POETRY_HOME=/opt/poetry
RUN curl -sSL https://install.python-poetry.org | POETRY_VERSION=1.2.1 python - && \
	cd /usr/local/bin && \
	ln -s /opt/poetry/bin/poetry && \
	poetry config virtualenvs.in-project true
