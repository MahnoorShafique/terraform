variable "users" {
    type=list(string)
  
}

output "this"{
    value="the first user is ${var.users[0]}"
    }
