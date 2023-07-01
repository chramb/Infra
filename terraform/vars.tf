variable "cloudflare_zone" {
  type = list(string)
}
variable "cloudflare_account_id" {
  type      = string
  sensitive = true
}
