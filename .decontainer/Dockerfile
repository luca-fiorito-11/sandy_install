FROM python:3.12-slim

############################################
# System dependencies
############################################
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3-venv \
    build-essential \
    gfortran \
    g++ \
    cmake \
    git \
    libhdf5-dev \
    libopenblas-dev \
    mpich \
    wget \
    ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

############################################
# Environment
############################################
ARG NB_USER=vscode
ARG NB_UID=1000
ENV USER=${NB_USER} \
    HOME=/home/${NB_USER} \
    VIRTUAL_ENV=/opt/venv \
    PATH="/opt/venv/bin:$PATH"

############################################
# Workspace
############################################
WORKDIR /home/vscode
RUN chown -R ${NB_UID}:${NB_UID} /opt/venv /home/vscode
USER ${NB_USER}

############################################
# Jupyter
############################################
ENV PORT=8888
EXPOSE 8888
CMD ["jupyter", "lab", "--notebook-dir=/home/vscode/", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
