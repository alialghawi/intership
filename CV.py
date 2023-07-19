from ultralytics import YOLO
import clearml

clearml.browser_login()


model = YOLO("yolov8n.pt")  # load a pretrained model 
model.train(data="Dataset/data.yaml", batch=8, epochs=20,device="cpu",project= 'Dataset/trainmodels',lr0=0.1,lrf=0.1)  # train the model


