# Learn Terraform - Provision a GKE Cluster And Deploy Airflow 

This repo is based on the guide [Provision a GKE Cluster tutorial](https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke), containing Terraform configuration files to provision an GKE cluster on GCP.
and references [Airflow Helm Chart : Quick start for Beginners](https://robust-dinosaur-2ef.notion.site/Airflow-Helm-Chart-Quick-start-for-Beginners-3e8ee61c8e234a0fb775a07f38a0a8d4)

Here below are the links of references
- [the original github repo](https://github.com/hashicorp-education/learn-terraform-provision-gke-cluster)
- [data-bootcamp-terraforms](https://github.com/wizelineacademy/data-bootcamp-terraforms)


## Provisioning a GKE Cluster using Terraform
1. Update the values for the variables in `variables.tf` (default keyword) and `terraform.tfvars`
2. Set Cloud SQL db password
```commandline
export TF_VAR_db_password=abcd1234
```
3.Terraform Initialization
```commandline
terraform init
```
4.Terraform Application
```commandline
terraform apply
```
5. Retrieves the credentials for the GKE cluster so that you can interact with it using kubectl
```commandline
gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)
```
## Deploy Airflow with Helm
6. Create namespace airflow
```commandline
kubectl create namespace airflow
```

7. (Skip this if already done)Add the official repository of the Airflow Helm Chart
```commandline
helm repo add apache-airflow https://airflow.apache.org
helm repo update
```

8. Create kubectl secret for db_password
```commandline
kubectl create secret generic airflow-db-secret --from-literal=password=abcd1234 -n airflow
```

9. Modify the default values in `airflow-values.yaml` if needed
10. Install airflow
```commandline
helm install airflow apache-airflow/airflow -n airflow -f airflow-values.yaml --debug
```
11. Go to the webserver
```commandline
kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow
```
12. customize your airflow and update
```commandline
helm show values apache-airflow/airflow > airflow-values.yaml
helm upgrade --install airflow apache-airflow/airflow -n airflow -f values.yaml --debug
```