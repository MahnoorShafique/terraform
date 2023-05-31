#we will use variable keyword for variables
#taking input from user
variable "name" {
       default="nothing"
}
variable "age" {
  type=number
}
#if you run above ,it will just take a variable,
#now to print that variable,use output

output "m"{
    value="hi ${var.name}, your age is ${var.age}"
    #since we are using quotation mark so we need to use ${} for printing variable
    #without quotation we can just write var.myvar to print variable.
}


#to define variable in non interactive shell
#run by using command:
#terraform plan -var "name=mahnoor"
#terraform plan -var "age=28" -var "name=mahnoor"