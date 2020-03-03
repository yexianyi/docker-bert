# This docker file is for creating Bert env.
FROM tensorflow/tensorflow:1.14.0-py3-jupyter

ARG BERT_GIT_REPO=https://github.com/google-research/bert.git

MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

# Install essential components for installing BERT
RUN apt-get update -y \
  && apt-get install git -y \
  && copy download_glue_data.py . \
  && python download_glue_data.py \
  && git clone BERT_GIT_REPO \
