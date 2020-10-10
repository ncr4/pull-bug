FROM python:3.8

COPY ./setup.py /pullbug/setup.py
COPY ./README.md /pullbug/README.md
COPY ./pullbug /pullbug/pullbug

WORKDIR /pullbug

RUN pip install -e .

ENTRYPOINT [ "python", "pullbug/cli.py", "--github", "--github_owner", "ncr4", "--gitlab", "--rocketchat" ]
