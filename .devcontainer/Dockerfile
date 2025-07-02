# Utilise la même image qu'avant
FROM python:3.11-slim

# Mettre à jour pip et installer les versions exactes
RUN pip install --upgrade pip && \
    pip install \
      numpy==2.0.0 \
      pandas==2.2.2 \
      scikit-learn==1.4.2 \
      catboost==1.2.5

# Répertoire de travail
WORKDIR /workspace

# Commande par défaut
CMD ["bash"]
