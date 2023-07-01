resource "cloudflare_zone" "zone" {
  for_each   = toset(var.cloudflare_zone)
  account_id = var.cloudflare_account_id
  plan       = "free"
  type       = "full"
  zone       = each.key
}
