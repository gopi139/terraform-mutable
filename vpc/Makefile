dev-apply: ## create Dev environment
    @terraform init -backend-config=env/dev-backend.tfvars
    @terraform apply -auto-approve -var-file=env/dev.tfvars

prod-apply: ## create Prod environment
    @terraform init -backend-config=env/prod-backend.tfvars
    @terraform apply -auto-approve -var-file=env/prod.tfvars