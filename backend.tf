#####################################
# Terraform Settings
#####################################
terraform {
  # チーム開発の場合は基本的に固定しないとtfstateの管理バージョンで怒られる
  required_version = ">= 0.11.13"

  backend "s3" {
    bucket = "yastani-terraform-tfstates"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
