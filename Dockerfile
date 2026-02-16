# Bilimsel analizler için optimize edilmiş hazır imaj
FROM jupyter/scipy-notebook:latest

USER root

# Gerekli sistem kütüphanelerini kur (Derleme araçları vb.)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID

# Çalışma dizinini ayarla
WORKDIR /home/jovyan/work

# Python paketlerini kopyala ve kur
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt