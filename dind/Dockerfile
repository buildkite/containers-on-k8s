FROM python:alpine

ARG lint_version=v0.54.2
ARG flip_version=1.2.3

RUN pip install cfn-lint==${lint_version}
RUN pip install pydot

RUN pip install cfn-flip==${flip_version}
