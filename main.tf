terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = ${{ secrets.SUPER_TOKEN }}
}

resource "github_repository" "example" {
  name        = "example-repository"
  description = "An example repository created by Terraform"
  visibility  = "private" # или "public" для публичного репозитория

  // Другие настройки репозитория по желанию
}
