FROM python:3.12-slim

# System deps
RUN apt-get update && apt-get install -y --no-install-recommends \
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
    && rm -rf /var/lib/apt/lists/*

# Workspace
WORKDIR /workspace

# Jupyter
RUN pip install jupyterlab

EXPOSE 8888
CMD ["jupyter", "lab", "--notebook-dir=/workspace", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
