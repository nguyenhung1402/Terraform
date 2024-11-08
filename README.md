
## Usage
1. Clone the repo
   ```sh
   git clone https://github.com/nguyenhung1402/Terraform
   ```
2. Set key, region
   ```sh
   aws configure
   ```
3. Initialize the Terraform project
   ```sh
   terraform init
   ```
4. Plan the infrastructure changes
   ```sh
   terraform plan
   ```
5. Apply the infrastructure changes
   ```sh
   terraform apply
   ```
6.  Terraform with the override file:
    ```sh
    terraform apply -var-file="override.tfvars"
    ```
7.  Command-Line Variable Overrides:
    ```sh
    terraform apply  -var="instance_type=t3.large"
    ```
8.  To destroy the infrastructure
    ```sh
    terraform destroy
    ```

| Name | Source 
|------|--------
| <a name="module_ec2"></a> [ec2](./modules/ec2) | ./modules/ec2 | n/a |
| <a name="module_nat_gateway"></a> [nat\_gateway](./modules/nat_gateway) | ./modules/nat_gateway | n/a |
| <a name="module_route_table"></a> [route\_table](./modules/route_table) | ./modules/route_table | n/a |
| <a name="module_security_group"></a> [security\_group](./modules/security_group) | ./modules/security_group | n/a |
| <a name="module_subnet"></a> [subnet](./modules/subnet) | ./modules/subnet | n/a |
| <a name="module_vpc"></a> [vpc](./modules/vpc) | ./modules/vpc | n/a |



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_ip"></a> [allowed\_ip](#input\_allowed\_ip) |IP được phép truy cập | `string` | `"0.0.0.0/0"` | Yes |
| <a name="input_ami"></a> [ami](#input\_ami) | ID của AMI | `string` | `"ami-01811d4912b4ccb26"` | Yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block cho VPC | `string` | `"10.0.0.0/16"` | Yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Loại instance | `string` | `"t2.micro"` | Yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Tên của key pair | `string` | `"AWS"` | Yes |
| <a name="input_private_cidr_block"></a> [private\_cidr\_block](#input\_private\_cidr\_block) | CIDR block cho Private Subnet | `string` | `"10.0.2.0/24"` | Yes |
| <a name="input_public_cidr_block"></a> [public\_cidr\_block](#input\_public\_cidr\_block) | CIDR block cho Public Subnet | `string` | `"10.0.1.0/24"` | Yes |

