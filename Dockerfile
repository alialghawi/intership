FROM python:3.10
RUN pip install ultralytics
RUN pip install opencv-python-headless
WORKDIR /app


COPY yolov8n.pt yolov8n.pt
COPY CV.py CV.py


CMD ["python3", "./CV.py"]
