FROM continuumio/miniconda3

ARG ENV_NAME

COPY $ENV_NAME.tar.gz /tmp/$ENV_NAME.tar.gz
RUN mkdir /opt/conda/envs/$ENV_NAME && tar -xzf /tmp/$ENV_NAME.tar.gz -C /opt/conda/envs/$ENV_NAME && rm /tmp/$ENV_NAME.tar.gz
COPY *.py /home/
