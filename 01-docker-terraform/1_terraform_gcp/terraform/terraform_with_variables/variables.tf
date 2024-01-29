variable "credentials" {
  description = "My Credentials"
  default     = "/home/Dan/.gc/ny-rides.json"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}


variable "project" {
  description = "Project"
  default     = "robust-episode-412509"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default     = "asia-southeast2"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default     = "asia-southeast2"
}

variable "bq_dataset_name" {
  description = "Terraform_DE_Zoomcamp"
  #Update the below to what you want your dataset to be called
  default     = "trips_data_all"
}

variable "gcs_bucket_name" {
  description = "jhxdoe_de_zoomcamp_terraform"
  #Update the below to a unique bucket name
  default     = "dtc_data_lake_ny-rides-dan"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}