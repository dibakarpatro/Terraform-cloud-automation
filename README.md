# Terraform Infrastructure Practice by Dibakar Patro

This repository contains multiple practice projects and Terraform configuration files to automate and manage infrastructure on AWS. Each folder represents a different Terraform topic, exercise, or task, progressing from basic to more advanced concepts like EC2 instances, S3 buckets, modules, provisioners, and clusters.

## Repository Structure

### 1. **day01_create_ec2&s3**
   - Basic Terraform script to create an EC2 instance and S3 bucket.
   - Demonstrates the foundational skills of launching resources using Terraform.

### 2. **day02_create_ec2_by_variable**
   - Terraform configuration to create an EC2 instance using variables.
   - Shows how to make infrastructure more dynamic by defining and using variables.

### 3. **day03_create_custom_NW**
   - Creates a custom VPC with subnets, route tables, and a gateway.
   - Learn how to configure your own network in AWS using Terraform.

### 4. **day04_remote_statefile_configure**
   - Configures a remote backend for storing Terraform state files.
   - Important for collaboration and tracking infrastructure state.

### 5. **day04_statefile_creates3**
   - Creates an S3 bucket for storing the Terraform state file.
   - Shows the process of keeping state files secure and centralized.

### 6. **day05_life_cycle_rule**
   - Introduces the lifecycle rules in Terraform to manage resources.
   - Learn how to control resource creation, updates, and destruction.

### 7. **day06_dependency_block**
   - Demonstrates how to set dependencies between resources in Terraform.
   - Ensures that resources are created in the correct order.

### 8. **day07_multiproviders**
   - Uses multiple providers within a single Terraform configuration.
   - Learn to manage infrastructure in different regions or clouds.

### 9. **day08_module_practice**
   - Implements reusable Terraform modules.
   - Shows how to organize and reuse code efficiently.

### 10. **day09_ec2_new_keypair**
   - Creates an EC2 instance with a new SSH key pair for secure access.

### 11. **day09_ec2_userdata**
   - Configures EC2 instances using user data scripts.
   - Automates software installation and configuration during instance launch.

### 12. **day10_provisioners**
   - Practice using provisioners to run scripts on EC2 instances.
   - Helps in bootstrapping instances with required configurations.

### 13. **day11_count**
   - Demonstrates the `count` feature to create multiple instances of a resource.

### 14. **day11_locals**
   - Use of local values in Terraform for cleaner, more maintainable code.

### 15. **day12_foreach**
   - Demonstrates the `for_each` meta-argument to loop through resources dynamically.

### 16. **hit_apply_to_the_target_one**
   - Targets a specific resource in Terraform to apply changes to that resource only.

### 17. **null_resource**
   - Experimenting with null resources and local provisioners for custom workflows.

### 18. **something_new**
   - **Cluster creation**: Set up a new cluster, demonstrating advanced Terraform usage.
   
### 19. **Update terraform.tf**
   - Updates and changes to the base `terraform.tf` files.

## How to Use

1. **Clone the repository**:
   ```bash
   git clone https://github.com/dibakarpatro/devops-project-1.git
   ```
2. **Navigate to the directory** of the day/topic you want to practice:
   ```bash
   cd day01_create_ec2&s3
   ```

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Run a Terraform plan** to see the infrastructure changes:
   ```bash
   terraform plan
   ```

5. **Apply the Terraform configuration** to deploy infrastructure:
   ```bash
   terraform apply
   ```

6. **Destroy resources** once you're done:
   ```bash
   terraform destroy
   ```

## Notes
- Make sure you have AWS credentials configured for Terraform to interact with your AWS account.
- Each day or folder contains its own separate configuration file and infrastructure setup.
- Some folders, like `something_new`, contain more complex examples such as cluster setups.
  
## Requirements
- [Terraform](https://www.terraform.io/downloads)
- AWS account with proper IAM permissions.

## Author
**Dibakar Patro**  
This repository serves as a learning tool and documentation for various Terraform practices on AWS.

--- 
