from ultralytics import YOLO
import clearml

clearml.browser_login()




model = YOLO("yolov8n.pt")  # load a pretrained model 
model.train(data="cfg/headandpersondata.yaml", batch=64, epochs=20,device="cuda",project= 'datasets/trainmodels',optimizer='')  # train the mo
#/home/tr-ali/Projects/intership/trainmodels