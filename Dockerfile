FROM python:3.11-slim

# Mettre à jour pip
RUN pip install --upgrade pip

# Installer exactement les versions voulues
RUN pip install \
    numpy==2.0.0 \
    pandas==2.2.2 \
    scikit-learn==1.4.2 \
    catboost==1.2.5

# Travailler dans /workspace
WORKDIR /workspace

# Commande par défaut pour Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
