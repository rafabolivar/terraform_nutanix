# Example file for Terraform - Nutanix

Quick example of creation of a VM called "test-terraform_VM1" using the Nutanix provider for Terraform.

Remember to change the right values for your Prism Central, UUID of your cluster and UUID of your network.

The first time you try Terraform you need to do the following on the same directory you downloaded the example.tf file:

```
$ terraform init
$ terraform apply
```

Then you can modify your example.tf file and again:

```
$ terraform apply
```
