FROM derekadair/python-workflow:dev as dev
FROM derekadair/python-workflow:ffmpeg
COPY pip.conf /tmp
COPY requirements.txt /tmp
ENV PIP_CONFIG_FILE=/tmp/pip.conf
COPY --from=dev /virtualenv/ /virtualenv/
COPY --from=dev /usr/bin/entr /usr/bin/entr
RUN pip install -r /tmp/requirements.txt

COPY ./ /code/
WORKDIR /code
