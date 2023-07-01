terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.9.0"
    }
  }
}

module "fastmail" {
  for_each    = toset(var.cloudflare_zone)
  source      = "./fastmail"
  domain_name = each.key
  zone_id     = cloudflare_zone.zone[each.key].id
}
