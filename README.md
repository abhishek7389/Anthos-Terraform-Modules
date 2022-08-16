# Anthos-Terraform-Modules

## Prerequisites -

- A Private/Public cluster created using terraform, we need information from the cluster state file to pass on in the module

- Modify the state file location of your existing cluster in the data-source file of the calling module

- (Optional)there might be path issues while referencing the root module so if you're following company standard terraform structure then just put the       files to the respective folder following the same structure.

### Note: For cross-project as well it is working but not expected.


