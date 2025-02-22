default:
	rm -rf .terraform
	terraform inti -backend-config=env-${env}/state.tfvars
	terraform ${action} -auto-approve -var-file=env-${env}/main.tfvars