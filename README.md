# Using Terraform with Google Cloud Build

## TODO

Build Terraform Builder

Checkout dev branch

Change main.tf

Git add, commit, push to dev branch

Cloud Build: terraform init, plan

Create pull request against master

Review tf plan in build step

Merge into master

Cloud Build: terraform init, apply -auto-approve

## Setup

## Workflow

## Notes

Need to use github build step to create PR automagically

Ideally would write out tfplan and then populate in PR for review

TFVars

terraform destroy run from Cloud Build

Can always break glass from Cloud Build, with remote state