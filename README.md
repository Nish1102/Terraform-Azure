# Terraform Azure Deployment

This repository contains Terraform configurations to deploy infrastructure resources on Microsoft Azure.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure subscription with an associated service principal.
- Azure Storage Account for Terraform state.

## Configuration

### Backend

Use Azure Storage Account to store the Terraform state. Update `backend.tf` with your storage account details.

```hcl
terraform {
  backend "azurerm" {
    storage_account_name = "your_storage_account_name"
    container_name       = "your_container_name"
    key                  = "terraform.tfstate"
    access_key           = "your_storage_account_access_key"
  }
}
```

### Main

`main.tf` defines Azure provider, resource group, virtual network, subnet, public IP, network interface, and Linux virtual machine.

```hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource definitions...
```

## Usage

1. Clone the repository:

    ```bash
    git clone <repository_url>
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Review and apply the configuration:

    ```bash
    terraform plan
    terraform apply
    ```

4. Access deployed resources in Azure portal.

## Cleanup

To avoid charges, clean up resources:

```bash
terraform destroy
```

## Contributions

Contributions are welcome! Open a pull request for issues or improvements.

## License

This project is licensed under the [MIT License](LICENSE).

