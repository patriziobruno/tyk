

# Generated by: tyk-ci/wf-gen
# Generated on: Friday 04 March 2022 11:40:32 AM UTC

# Generation commands:
# ./pr.zsh -repos tyk -base td-883-test -branch td-883-test -title Sync from latest releng templates
# m4 -E -DxREPO=tyk


data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk" {
  value = data.terraform_remote_state.integration.outputs.tyk
  description = "ECR creds for tyk repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}