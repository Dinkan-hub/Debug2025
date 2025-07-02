FROM python:3.11-slim

# 1) Outils de compilation et dépendances système
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      python3-dev \
      libomp-dev \
      git && \
    rm -rf /var/lib/apt/lists/*

# 2) Mettre à jour pip
RUN pip install --upgrade pip

# 3) Installer les bibliothèques pures
RUN pip install \
      numpy==2.0.0 \
      pandas==2.2.2 \
      scikit-learn==1.4.2 \
      packaging==23.2

# 4) Cloner CatBoost et compiler le binding Python
RUN git clone --depth 1 --branch v1.2.5 https://github.com/catboost/catboost.git /catboost-src && \
    cd /catboost-src && \
    ./ya make python && \
    pip install --no-deps --ignore-installed python-package && \
    cd / && rm -rf /catboost-src

# 5) Répertoire de travail
WORKDIR /workspace

# 6) Commande par défaut
CMD ["bash"]

