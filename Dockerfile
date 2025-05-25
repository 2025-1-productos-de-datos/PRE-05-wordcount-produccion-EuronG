#
# docker build -t wordcount-app .
# docker run --rm -b ...
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e
# py3
CMD [ "python", "-m", "homework", "/data/input/", "/data/output/" ]

# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app