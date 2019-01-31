FROM tensorflow/tensorflow:latest

RUN apt-get update \
 && apt-get install -y --no-install-recommends python-pip python-dev vim libsm6 libxext6 libgtk2.0-dev imagemagick \
 && pip install --upgrade scikit-image keras opencv-python PyDrive \
 && rm -rf /var/lib/apt/lists/*
