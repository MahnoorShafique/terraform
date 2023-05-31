
#block name like firstblock,secondblock etc should be different for each block
output "firstblock"{
    value="this is first bloc"

}

output "secondblock"{
    value="this is second bloc"

}

output "thirdblock"{
    value="this is third bloc"

}


# we can write these 3 blocks in 3 files in same multiblock directory, when i run terraform plan ,
#all three files will be executed in same way as these 3 blocks are executed here.