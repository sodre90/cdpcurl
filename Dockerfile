FROM python:3.11-slim-bullseye

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
ADD . /
RUN pip install .

# Run the application:
ENTRYPOINT ["cdpcurl"]