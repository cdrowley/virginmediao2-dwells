FROM mcr.microsoft.com/devcontainers/python:1-3.11-bookworm
ENV PYTHONUNBUFFERED 1

ENV CONDA_DIR /opt/conda

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh \
    && sh /tmp/miniconda.sh -b -p $CONDA_DIR \
    && rm /tmp/miniconda.sh \
    && $CONDA_DIR/bin/conda clean -t -i -p -y

ENV PATH $CONDA_DIR/bin:$PATH

RUN conda install -c conda-forge mamba

RUN mamba create -n menv python=3.11 -y
RUN echo "source activate menv" > ~/.bashrc
ENV PATH /opt/conda/envs/menv/bin:$PATH
