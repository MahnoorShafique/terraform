variable "myvar" {
  type=string
}

output "print"{
    value="Hi, ${var.myvar}"
}

/* 
in order to read variables from env 
$ export TF_VAR_myvar=mahnoor ==> use TF_VAR_ as prefix before variable name

#env | grep -i myvar -->print myvar on console.
$terraform plan

*/