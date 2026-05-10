# Go To Do App

Following configurations are completed as per assessment.  
- Github actions CI files are ready.
    - Any change in `client/` directory triggers `frontend-ci.yaml` CI.
    - Any change in `server/` directory triggers `api-ci.yaml` CI.
- Terraform code is ready to provision minikube single node kubernetes cluster.
- Kubernetes manifest files are ready to deploy application on through kubernetes.


# Getting Started

**1. Test CI files**

- Update any of the files inside `client/` directory and observe the `frontend-ci.yaml` trigger.
- Update any of the files inside `server/` directory and observe the `api-ci.yaml` trigger.  

Both the CI files are being triggered as expected.

**2.Provision minikube cluster**
- Go to `terraform` directory.
- run `terraform init` to initialize the terraform.
- run `terraform plan` and view the resources going to be provisioned against terraform files.
- After reviewing and observing the resources, run `terraform apply` command and provision the minikube cluster in one go.

**3. Deploy application via kubernetes manifest files**
All the kubernetes deployment files are in `k8s` directory.  
- From project root directory run the following command.  
        `kubectl apply -f k8s/`
- All the manifest files will be deployed and application will get started.  

To access the application, do port-forwarding (temporarily) to confirm the application status.  
- Run the following command in terminal.  
        `kubectl port-forward svc/frontend 8082:8081 -n todo-app &`
- Go to `localhost:8082` in web browser and confirm the application status.  

You should be able to see the application front page.  

Note: Auto application/kubernetes deployment via terraform part couldn't be done due to time shortage as couple of issues regarding docker images and other configs took much time.