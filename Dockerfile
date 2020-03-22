FROM python:3-alpine
ARG ANSIBLE_VERSION
RUN echo -e "#!/bin/sh\n\
echo \"This is ansible version $ANSIBLE_VERSION\"\n" > /run.sh
CMD ["sh", "/run.sh"]
