FROM python:3.12

WORKDIR /code

COPY . .

RUN pip install "cython<3.0"
RUN pip install --no-build-isolation "pyyaml==5.4.1"


RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["./entrypoint.sh"]
