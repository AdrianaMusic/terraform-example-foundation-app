/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "terraform_service_account" {
  type        = string
  description = "Service account email of the account to impersonate to run Terraform."
}

variable "location_primary" {
  type        = string
  description = "The primary region for deployment"
  default     = "us-east1"
}

variable "location_secondary" {
  type        = string
  description = "The secondary region for deployment"
  default     = "us-west1"
}

variable "gcp_shared_vpc_project_id" {
  type        = string
  description = "The host project id of the shared VPC"
}

variable "shared_vpc_name" {
  type        = string
  description = "The shared VPC network name"
}

variable "boa_gke_project_id" {
  type        = string
  description = "Project ID for GKE"
}

variable "boa_ops_project_id" {
  type        = string
  description = "Project ID for ops"
}

variable "boa_sec_project_id" {
  type        = string
  description = "Project ID for secrets"
}

variable "boa_sql_project_id" {
  type        = string
  description = "Project ID for SQL"
}

variable "gke_cluster_1_cidr_block" {
  type        = string
  description = "The primary IPv4 cidr block for the first GKE cluster."
  default     = "100.64.142.0/28"
}

variable "gke_cluster_2_cidr_block" {
  type        = string
  description = "The primary IPv4 cidr block for the second GKE cluster."
  default     = "100.65.134.0/28"
}

variable "gke_mci_cluster_cidr_block" {
  type        = string
  description = "The primary IPv4 cidr block for multi-cluster ingress (MCI)."
  default     = "100.64.134.0/28"
}
