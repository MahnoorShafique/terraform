
output "findage"{
    
    value="the age of ${var.findname} is ${lookup(var.mymap,var.findname)}"
}



