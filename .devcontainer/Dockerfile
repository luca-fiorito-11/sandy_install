# Small, clean base image
FROM python:3.12-slim

# Ensure non-interactive apt operations
ENV DEBIAN_FRONTEND=noninteractive

# System dependencies required for scientific computing and builds
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

# Upgrade pip and install what you need globally
RUN pip install --no-cache-dir --upgrade pip setuptools

# Clean default cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Workspace
WORKDIR /workspace

# Expose Jupyter port (only needed if running manually)
EXPOSE 8888

# Default command (safe and minimal)
# Override in devcontainer.json if you want another default
CMD ["bash"]
