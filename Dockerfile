FROM public.ecr.aws/lambda/python:3.10

COPY entrypoint.sh /
RUN yum install -y zip \
    && chmod +x /entrypoint.sh \
    && pip install --upgrade pip

ENTRYPOINT ["/entrypoint.sh"]