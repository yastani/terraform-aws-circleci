#####################################
# Terraform Settings
#####################################
terraform {
  # Terraform Cloudを使用するためバージョンは最低でも0.11.13以上
  # チーム開発の場合は基本的に固定しないとtfstateの管理バージョンで怒られる
  required_version = ">= 0.11.13"

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yastani"

    workspaces {
      prefix = "yastani-"
    }
  }
}