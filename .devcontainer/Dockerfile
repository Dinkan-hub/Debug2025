FROM python:3.11-slim

# Installer les dépendances de compilation
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      python3-dev \
      libomp-dev \
      git && \
    rm -rf /var/lib/apt/lists/*

# Mettre à jour pip
RUN pip install --upgrade pip

# Installer d’abord les dépendances Python pures
RUN pip install \
      numpy==2.0.0 \
      pandas==2.2.2 \
      scikit-learn==1.4.2 \
      packaging==23.2

# Cloner et compiler CatBoost 1.2.5 depuis la source
RUN git clone --depth 1 --branch v1.2.5 https://github.com/catboost/catboost.git /catboost-src && \
    cd /catboost-src && \
    ./ya make python && \
    pip install --no-deps --ignore-installed python-package && \
    rm -rf /catboost-src

# Répertoire de travail
WORKDIR /workspace

# Commande par défaut
CMD ["bash"]
