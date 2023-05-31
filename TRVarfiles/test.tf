#2 ways to pass variables ,
# 1 pn prompts
#2 through use of -var "key=value"
#both of these in convenient if we have large variables so we have TeraformVariable files.
#file name must be `terraform.tfvars` or if you have file with different name like stage.tfvars 
#then run this using terraform plan -var-file=stage.tfvars

variable "name" {
  type=string
}
variable "age" {
  type=number
}
output "printdata"{
    value="HI ${var.name}!!!, you are ${var.age} years old"
}