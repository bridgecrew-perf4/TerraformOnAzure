[[_TOC_]]


# Example Use Case

This kit will deploy the following target architecture.

A. Compute Layer

1. The Front-end Tier provisions a Virtual Machine running [Springboot sample app](TODO create Springboot sample app)

B. Persistence Layer

2. Backend Tier will have [Azure database for MySQL DB](TODO create Azure database for MySQL) via Azure PaaS DB. <!-- TODO POC Azure Cosmos DB -->

The below diagram is a visual representation of this target architecture.

## Target Architecture Diagram

![image.png](/.attachments/VM-with-PaaS.png)

# Getting Started

If you find that this JumpStart Kit will be useful for accelerating your migration strategy, please follow the steps found at the wiki, [Getting Started on a kit](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_wiki/wikis/DevOps%20Automation/435/How-To-Consume).

## High-level steps for consuming kit

1. Copy and run the [DevOps Services Automation](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_git/att-onboarding-poc-services) 
2. Copy and create a new pipeline for [Image Builder](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_git/jumpstart-image-builder-sig)
3. Create a new repo in the VP tower for the application
4. Copy this kit repo to the new repo in the VP tower into a new branch
5. Create Branch from a specific version of the kit compatible with the desired common-library version (this will be your working branch)  
    `git checkout v0.1.0 -b newbranch`
6. Modify /Pipelines/Pipeline.yaml to reference desired common-library version
7. Modify /Pipelines/Variables.yaml to suit your needs
8. Modify /Pipelines/Variables.<environment>.yaml for each environment (Service Principals used for each environment)
9. Create an Azure Pipeline pointing to Pipelines/Pipeline.yaml
10. Modify /Terraform/Backends/backend.<environment>.tfvars for each environment
11. Modify /Terraform/Config/config.<environment>.tfvars to declare the Azure resource properties (names, vnet info, etc...)

## Detailed steps for consuming kit

### Pre-Requisites

Before running this Jumpstart Kit for the first time there are some required resources needed.  

- Run the [DevOps Services Automation](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_git/att-onboarding-poc-services). This is the repository that deploys the base infrastructure in the application subscription. This will create some of resources relevant to this kit including: Vnet, Subnets, Storage Account, Shared Image Gallery, Keyvault.
- Set up and configure a self hosted custom agent pool.

If planning to use Image Builder piece of this kit then the following steps are required after provisioning the DevOps Services and creating the custom agent pool:

- The custom agent pool must be deployed to the same VNET used by Packer.
- Access to the ATT Golden Images Shared Image Gallery (TODO: add instructions on how to request access)
- Verify the Service Connection has "Storage Blob Data Reader" to the Storage Account.
- Verify the SPN has "Contributor" Role to the destination Shared Image Gallery.
- Manually upload the sample "TODOAPP" to a storage account container.

As of v0.5.x Image Builder has been moved into its own repo [here](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_git/jumpstart-image-builder-sig)

### Pipeline Preparation

#### Create a new repo in the VP tower for the application

An existing VP tower and the ability to create a new repo should already be in place

#### Copy this kit repo to the new repo in the VP tower

Within the new repo, create a branch while code is being adjusted to a working state. After confirming that this kit is appropriate for the application, either clone or copy it from this location to the new repo. This will become your working copy.

#### Copy the Image Builder Repo in the VP tower

If planning to use image builder on your application team, copy and create a new pipeline for [Image Builder](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_git/jumpstart-image-builder-sig). Follow the instructions on the ReadMe doc for setup.

#### Modify Pipelines/Pipeline.yaml

The provided `/Pipelines/Pipeline.yaml` file contains three pre-defined stages with dependencies. Each stage is considered an environment which must have its own corresponding ./Terraform/Config/config.<environment>.tfvars file. If a new environment is needed, copy and paste a stage and modify the name. This also supports same environment multi-region. For example a multi-region deployment of DEV would have two stages. One named DEV-EASTUS and the other as DEV-westus2. There would be two TFVARS files named config.dev-eastus.tfvar and config.dev-westus2.tfvar. See "Terraform Prep".

#### Set Common Library version

The common library includes Terraform modules that are common across projects and towers. It also includes Pipeline YAML sequences that are common across all pipelines, which are the Terraform setup, init, plan, and apply stages. These are referenced and versioned in the "resources" section of the Pipeline.yaml file. **Ensure the version tag is used as there is ongoing development being merged regularly with master.**  

```yml
resources:
  repositories:
  - repository: common-library
    type: git
    name: ATT Cloud/common-library
    ref: refs/tags/v0.1 # can also be a branch reference if required
    endpoint:
```

#### Set Image Builder Resource

When planning to use image builder published artifacts, add this block at the "resources" level on your Pipeline.yaml file:

```yml
  pipelines:
  - pipeline: jumpstart-vm #<--- Alias to use when referencing this resource
    source: jumpstart-image-builder-sig #<--- Verify source matches name of image builder pipeline
    trigger:
      branches:
        include:
        - master

```

This resource will be used to download pipeline artifacts published by image builder, this resource will also automatically trigger a build on this kit each time image builder publishes a new artifact. For more information on how to [trigger one pipeline after another](https://docs.microsoft.com/en-us/azure/poc/pipelines/process/pipeline-triggers?view=azure-poc&tabs=yaml)

Note: You may also remove the trigger if desired, the VM kit will attempt to download the latest artifact by default.

#### Modify Pipeline/Variables.yaml

Edit the example /Pipelines/Variables.yaml file, and identify:

1. MOTSID = Application identifier. Used for creation of resource group and state file
2. poolName = In most cases this can be left as "Custom" which will use the ADO agents already provisioned in your tower
3. Image Builder variables. Please review .VARIABLE* comments at the top of the document `Pipelines/Variables.yaml` to understand each variable.

#### Create an Azure Pipeline  

In Azure DevOps Pipelines, navigate to Pipelines -> New -> Existing YAML -> point to /Pipelines/Pipeline.yaml  

### Image Builder Preparation

Image Builder is the pipeline job that allows you to create a managed image from a base or 'Golden' image. When a CI artifact is specified either from AZ artifacts or a Storage Account, Packer is then used to create an image that can be published to a Shared Image Gallery.  

As of v0.5.x Image Builder has been moved into its own repo [here](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_git/jumpstart-image-builder-sig)
If needed by your application, copy this repo and create a new pipeline for it, follow the instructions on the ReadMe doc for setup and run it once before testing the deployment of the VM kit

### Terraform Preparation

#### Modify Terraform Backends Files

Create or edit a /Terraform/Config/backend.<ENVIRONMENT>.tfvars file for each environment. This contains the Terraform state configuration for the backend

### Setup Terraform Variables Per Environment

Create or edit a /Terraform/Config/config.<ENVIRONMENT>.tfvars file for all variable definitions per environment. Three sample environments have been provided by default (DEV, QA, PROD)

### Test the deployment

At this point you should be able to commit your changes to the new repo and branch, the pipeline will automatically run if the CI triggers are set otherwise run it manually.

# Image Builder Use Case Scenarios

This section assumes you are attempting to run this kit using the default provided configuration.

## Scenario 1 - Assign Image Builder published image to one or more VMs

In the case that you want to generate an image from image builder and have one or more VMs provisioned using such image ID: 

1. Copy the `jumpstart-image-builder-sig` repo and create a new pipeline for it, follow the instructions on the README document for set up and whether you plan to use AZ Artifats or Blob Storage as the CI artifact source.
2. Add the new VM as part of your `config.*.tf` vars file, on this example we'll add a new VM named `springboot3` as part of the existing `linux_vms` variable.

```yml
 vm3 = {
    name    = "springboot3"     #(Mandatory) name of the vm
    vm_size = "Standard_DS1_v2" #(Mandatory)
     ............
    }
```

3. On your `helper.tf` file, make sure to include the name of the VM as part of linux_image_ids map, assigning the value to the already created "todoapp_image_id" variable as part of the sample configuration.

```yml
 linux_image_ids = {
     "springboot1" = var.todoapp_image_id,
     "springboot2" = var.todoapp_image_id,
     "springboot3" = var.todoapp_image_id
     }
```

4. On the `jumpstart-image-builder-sig` repo main `pipeline.yaml file`, set the `tfvars_key` variable value to `todoapp_image_id`. All VM names assigned to that variable will get the generated image ID assigned.

## Scenario 2 - Disable Image Builder

In the case that your team does not need to run the image builder pipeline, follow these steps:

1. There's no need to copy `jumpstart-image-builder-sig` repo to your ADO project.
2. On your `variables.tf` file comment out or remove all instances of `springboot1` `springboot2` and so on.
3. On your `helper.tf` file comment out or remove the `linux_image_ids` map.
4. On your `Variables.yaml` file set the `image_builder` variable to `false`.
5. On your main `Pipeline.yaml` comment out or remove the following pipeline resource since this won't be needed (lines 53-59):

```yml
  pipelines:
  - pipeline: jumpstart-vm
    source: jumpstart-image-builder-sig
    trigger:
      branches:
        include:
        - master
```

All tasks related to Image Builder will now be skipped.

## Scenario 3 - Hard-code Image ID to one or more VMs

In the case that you already have an image published to a Shared Image Gallery (SIG), you can also "hard code" this image ID to one or more VMs directly on Terraform. On this example we'll assign an image ID to `springboot3`

1. On your `helper.tf` file simply add the value directly to the `springboot3` variable

```yml
 linux_image_ids = {
     "springboot3" = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/msft-westus2-poc-rg/providers/Microsoft.Compute/galleries/msftpocsig/images/todo_app/versions/1.0.6"
     }
```

That's all, same process can be used for any other VMs.

# Contribute

To contribute, please follow the steps from *The DevOps Patterns Wiki* section, [How to contribute](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_wiki/wikis/DevOps%20Automation/436/How-To-Contribute).
