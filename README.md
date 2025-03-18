# DevOps Test

This repository contains two projects as part of the DevOps test:  

1. **A simple Python Flask API** that returns the current date and time. The application is Dockerized for easy deployment.
2. **A Terraform configuration** to deploy an EC2 instance as a bastion host.

---

## **1. DateTime API (Python + Docker)**  

### **Project Structure**
```
datetime-api/
│── app.py
│── Dockerfile
│── requirements.txt
│── README.md
```

### **Setup and Usage**  

#### **Run Locally (Without Docker)**
1. Install dependencies:  
   ```bash
   pip install -r requirements.txt
   ```
2. Start the application:  
   ```bash
   python app.py
   ```
3. Access the API:  
   ```
   http://<server-ip>:5000/datetime
   ```

#### **Run with Docker**
1. **Build the Docker Image**  
   ```bash
   docker build -t datetime-api .
   ```
2. **Run the Container**  
   ```bash
   docker run -dt -p 5000:5000 datetime-api
   ```
3. **Test the API**  
   ```bash
   curl http://<server-ip>:5000/datetime
   ```

---

## **2. Terraform Bastion Host Deployment**  

### **Project Structure**
```
terraform-bastion/
│── main.tf
│── variables.tf
│── outputs.tf
│── README.md
```

### **Setup and Usage**
1. **Initialize Terraform**  
   ```bash
   terraform init
   ```
2. **Apply the Configuration**  
   ```bash
   terraform apply -var="region=us-east-1" \
                   -var="ami_id=ami-0abcdef1234567890" \
                   -var="subnet_id=subnet-0123456789abcdef" \
                   -var="key_name=my-key" \
                   -var="security_group=sg-0123456789abcdef"
   ```
3. **Terraform Outputs**
   - The public IP of the bastion host will be displayed after successful deployment.

---

## **Tech Stack Used**
- **Python (Flask)**
- **Docker**
- **Terraform**
- **AWS EC2**

---

## **Author**
**Muhammad Arslan Chaudhary**  
DevOps Engineer  

---

## **License**
This project is licensed under the MIT License.

