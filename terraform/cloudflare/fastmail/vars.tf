variable "zone_id" {
  type        = string
  description = "The zone id to setup DNS records for"
  sensitive   = true
}

variable "domain_name" {
  type        = string
  description = "The domain name to setup DNS records for"
}
