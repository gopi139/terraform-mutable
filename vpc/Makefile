clean:
	@rm -rf .terraform

dev-apply: clean ## create Dev environment
	@terraform init -backend-config=env/dev-backend.tfvars
	@terraform apply -auto-approve -var-file=env/dev.tfvars

prod-apply: clean ## create Prod environment
	@terraform init -backend-config=env/prod-backend.tfvars
	@terraform apply -auto-approve -var-file=env/prod.tfvars

dev-destroy: clean ## destroy Dev environment
	@terraform init -backend-config=env/dev-backend.tfvars
	@terraform destroy -auto-approve -var-file=env/dev.tfvars

prod-destroy: clean ## destroy Prod environment
	@terraform init -backend-config=env/prod-backend.tfvars
	@terraform destroy -auto-approve -var-file=env/prod.tfvars