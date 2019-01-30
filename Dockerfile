FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update \
 && apt-get install -y --no-install-recommends python-pip python-dev vim libsm6 libxext6 libgtk2.0-dev \
 && pip install --upgrade scikit-image keras opencv-python \
 && rm -rf /var/lib/apt/lists/*
