# terraform-aws-circleci

Circle CIを使ってTerraformを環境単位で自動plan&applyするためのリポジトリ
Terraformだけであればこのやり方でもROIは悪くないかもしれない

## 使用時の注意点

- Circle CIのContextに環境毎の `.aws/configure` を定義する必要がある
- PR発火とMerge発火などが組み合わせられないため、git運用で制限をかけてカバーしなければならなさそう