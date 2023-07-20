FROM nvidia/cuda:11.0.3-base-ubuntu20.04
WORKDIR /app
#installing python

RUN apt-get update && apt-get install -y --no-install-recommends \
     python3.10 \
    python3-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN pip3 install --upgrade pip
RUN pip3 install ultralytics
RUN pip3 install opencv-python-headless



COPY yolov8n.pt yolov8n.pt
COPY CV.py CV.py


CMD ["python3", "CV.py"]
