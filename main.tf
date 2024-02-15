terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "example" {
  name        = "example-repository"
  description = "An example repository created by Terraform"
  visibility  = "private" # или "public" для публичного репозитория

  // Другие настройки репозитория по желанию
}
