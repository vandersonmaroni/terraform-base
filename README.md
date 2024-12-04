# terraform-base

## O que é o terraform-base
O terraform-base é uma estrutura para preparar a cloud da AWS para testes utilizando o Terraform.

### O que será configurado via terraform com o terraform-base
- Disponibilizará o stete em um bucket do S3
- Criação de uma VPC
- Criação de uma VM
- Configuração de variáveis locais
- Disponibilização do IP da VM após a sua criação

## Variáveis necessárias para executar
variables.tfvars
```terraform
aws_access_key = "SUA CHAVE DE ACESSO DA AWS"
aws_secret_key = "SUA CHAVE SECRETA DA AWS"
```

### Como executar o terraform-base
Inicializando o terraform
```bash
terraform init
```

Formatando o Terraform
```bash
terraform fmt
```

Validando Terraform
```bash
terraform validate
```

Montando planejamento do Terraform
```bash
terraform -out plan.out -var-file="variables.tfvars"
```

Aplicando Terraform
```bash
terraform apply plan.out
```
