FROM prefecthq/prefect:3.0.2-python3.11-conda

RUN mkdir /usr/src/app/
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r /usr/src/app/requirements.txt
COPY . /usr/src/app/
WORKDIR /usr/src/app/
CMD ["echo", "enter a command"]
