# Terraform Configuration for Hetzner Cloud

## Overview

This repository contains Terraform configuration files to manage infrastructure on Hetzner Cloud. The provided configurations include a basic setup for deploying a server with custom parameters.

## Requirements

- [Terraform](https://www.terraform.io/downloads) 1.0 or higher
- Hetzner Cloud account and API token

## Getting Started

### 1. Clone the Repository

```sh
git clone https://github.com/vishwaravi321/Terraform.git your-rep
cd your-rep
```

### 2. Configure Your Variables

Change `terraform.tfvars` file with necessary variables:

```hcl
hcloud_token  = "your_hetzner_cloud_api_token"
name          = "server-name"
image         = "ubuntu-20.04"
server_type   = "cax11"
location      = "fsn1"
ssh_key        = "your_ssh_key_name"
```

**Note:** Ensure that you replace placeholder values with your actual Hetzner Cloud API token and other configuration values.

### 3. Update Locations and Images

Hetzner Cloud frequently updates available locations and images. Periodically check the [Hetzner Cloud API documentation](https://docs.hetzner.cloud/) for the latest information and update the `location` and `image` variables in your `terraform.tfvars` file accordingly.

### 4. Initialize Terraform

Run the following command to initialize the Terraform configuration. This will download the necessary provider plugins:

```sh
terraform init
```

### 5. Plan Your Infrastructure

Generate an execution plan to see what changes Terraform will make to your infrastructure:

```sh
terraform plan
```

### 6. Apply the Configuration

Apply the configuration to create or update resources in your Hetzner Cloud account:

```sh
terraform apply
```

### 7. View Output

After applying the configuration, you can view the output variables (such as the server's IP address) with:

```sh
terraform output
```

## Directory Structure

- `main.tf`: Main configuration file defining resources and outputs.
- `variables.tf`: File defining the input variables for the Terraform configuration.
- `terraform.tfvars`: File where you specify values for the variables.
- `.gitignore`: Specifies files and directories to ignore in Git.

## Contributing

If you want to contribute to this repository, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


### Added Note:

- **Update Locations and Images**: Added a section reminding users to periodically check and update location and image values according to Hetzner's latest offerings.

This ensures that users are aware of the need to keep their configurations up-to-date with Hetzner’s current offerings.