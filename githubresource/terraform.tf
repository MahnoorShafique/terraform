#any cloud provider

provider "github"{
 token=
}
#name repo in github will be created using name
#terraform-first-repo terraform will acess this repo in code using this name
# github_repository resource we got from terraform website
resource "github_repository" "terraform-first-repo" {
  name        = "first-repo-using-terraform"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}


resource "github_repository" "terraform-sec-repo" {
  name        = "sec-repo-using-terraform"
  description = "My awesome codebase22222"

  visibility = "public"
  auto_init = true
}

output "outputname"{
    value= github_repository.terraform-sec-repo.html_url # see tfstate file for this.
}