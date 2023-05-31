output "this"{
    value="${join("-",var.users)}"
}

output "upper"{
    value="${upper(var.users[0])}"
}

output "lower"{
    value="${lower(var.users[0])}"
}