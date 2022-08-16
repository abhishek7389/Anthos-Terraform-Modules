# Anthos-Terraform-Modules

## Prerequisites -

- A Private/Public cluster created using terraform, we need information from the cluster state file to pass on in the module

- Modify the state file location of your existing cluster in the data-source file of the calling module

- (Optional)there might be path issues while referencing the root module so if you're following company standard terraform        structure then just put the files to the respective folder following the same structure.

## Editable section

- backend.tf file - Definition of your terraform code backend, where all the statefiles gonna save

![image](https://user-images.githubusercontent.com/52596897/184918953-0a1d1268-5f61-404f-b8cf-74ae84465930.png)


- data-source.tf file - Definition of your previously created cluster information.

![image](https://user-images.githubusercontent.com/52596897/184919089-e37f4648-2ef0-46b6-a5dc-fc8acb0a38ec.png)


- terraform.tfvars - Definition of values of each variable present in the terraform code

![image](https://user-images.githubusercontent.com/52596897/184919182-15f3b842-84f7-49ff-ade1-65063bca08a2.png)


### Note: For cross-project as well it is working but not expected.




