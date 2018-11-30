# Using Terraform with Google Cloud Build

## TODO

## Setup

Build Terraform Builder

## Workflow

Checkout dev branch

Change main.tf

Git add, commit, push to dev branch

Cloud Build: terraform init, plan

Create pull request against master

Review tf plan in build step

Merge into master

Cloud Build: terraform init, apply -auto-approve




