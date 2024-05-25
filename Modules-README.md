
# Terraform Modules

In Terraform, modules are self-contained and reusable units of Terraform configuration that can be used to encapsulate and organize infrastructure resources. A module is essentially a directory containing one or more .tf files that define resources, variables, outputs, and other Terraform constructs

## Common use-cases of Modules

- **Infrastructure abstraction**: Modules allow you to abstract and encapsulate infrastructure components or patterns. For example, you can create a module that provisions a complete web application stack, including a load balancer, auto-scaling group, and database. This abstraction promotes reusability and simplifies the provisioning of similar infrastructure in different environments.

- **Code organization**: Modules help you organize your Terraform codebase by separating concerns into reusable units. You can break down your infrastructure into smaller, manageable modules based on different components, such as networking, compute, storage, or application layers. This improves code maintainability, readability, and collaboration.

- **Reusability**: Modules promote code reuse by allowing you to define infrastructure components once and reuse them across different projects or environments. For example, you can create a module for provisioning a standard VPC configuration, which can be reused in multiple applications or projects without duplicating code..

- **Versioning and sharing**: Modules can be versioned and shared using version control systems or public module registries. This enables collaboration within teams and sharing of best practices and infrastructure patterns across organizations. You can consume modules from public registries like the Terraform Registry or create and manage your own private module registry.

## Example usage of `modules` variable
Here's an example of how you can define and use modules in Terraform:

```sh

# main.tf

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"

  cidr = "10.0.0.0/16"
}

module "web_server" {
  source = "./modules/web_server"

  instance_count = 2
  instance_type  = "t2.micro"
}

```
---

In this example, two modules are used:

- The `vpc module` is sourced from the `terraform-aws-modules/vpc/aws` module in the Terraform Registry. It provisions a complete VPC infrastructure with subnets, route tables, and security groups. The module version 3.0.0 ensures a specific version is used.
- The `web_server` module is sourced from a local directory `./modules/web_server`. This module is a custom module defined within your project. It provisions web servers using the specified instance count and type.

## To deploy a `module` in any Environment

- Make sure the module is initialized. After creating or adding a new module, make sure to run the `terraform init` command to initialize the module

- Run `Terraform plan` to see preview the resources to be created

```sh
terraform plan 

```
---

- Run `Terraform apply` to create the resources to be created

```sh
terraform apply "
```
---
