# Using Terraform with Google Cloud Build

This repository contains the sample code reviewed in [this](https://www.youtube.com/watch?v=w7dMHiEyGAs) Take5 video. 

To use this code, you will need to build [this](https://github.com/GoogleCloudPlatform/cloud-builders-community/tree/master/terraform) Terraform cloud builder image, and you will need to configure a GCS bucket for Terraform state as described [here](https://github.com/GoogleCloudPlatform/cloud-builders-community/tree/master/terraform/examples/gcs_backend). Then replace PROJECT-ID and BUCKET-NAME in both cloudbuild.yaml files.

You'll then need to create two build triggers as described [here](https://cloud.google.com/cloud-build/docs/running-builds/automate-builds).

NOTE: This is not an official Google product.