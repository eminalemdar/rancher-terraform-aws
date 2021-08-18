# Kubernetes Clusters on AWS with Rancher

With these Terraform configuration files you can create **Kubernetes** clusters on **AWS** using both **EC2** and **EKS** options with **Rancher**.

> Before using these configurations files, you need to have a ***Rancher*** deployed in your preffered environment and you need to configure the network connection requirements between your **Rancher Server** and **AWS**.

## File Structure

You can see there are seperate files for both ***EC2*** and ***EKS*** cluster configurations. All of the configurations use variables whenever possible. You need to **update [variables](vars.tf) file according to your needs**.

## Cluster Informations

 - **EC2 Cluster**
	 - EC2 Cluster has **3** controlplane nodes and **3** worker nodes. You can change the node counts but it is recommended to use multiple controlplane nodes ***(odd numbers)*** for **HA Configuration**.
	 - Both controlplane and worker nodes have different node template configurations. There is a file for these node templates that you can update the values from **[node-templates](nodetemplates.tf)**. **You need to update the configurations for these node templates according to your needs**.
	 - You need to update **[variables](vars.tf)** file.
- **EKS Cluster**
	- EKS Cluster's controlplane is managed by **AWS**. You don't have to deploy controlplane when using EKS.
	- There is one node group for worker nodes in EKS cluster. You can change ***min_size***, ***desired_size*** and ***max_size*** values according to your needs. 
	- You can change the Kubernetes version.
	- You need to update **[variables](vars.tf)** file.

## Usage

After changing the values you can run `terraform init` command to initialize Terraform.

- You can run `terraform plan` and `terraform apply` for creating the resources.
- You can run `terraform destroy` for destroying the resources.
