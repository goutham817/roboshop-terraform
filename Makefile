default:
	rm -rf .terraform
	terraform init -backend-config=env-$(env)/state.tfvars
	terraform $(action) -auto-approve -var-file=env-$(env)/main.tfvars