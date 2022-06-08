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
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

COPY requirements.txt /tmp/
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

RUN jupyter serverextension enable --py jupyterlab
