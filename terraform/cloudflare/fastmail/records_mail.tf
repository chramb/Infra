resource "cloudflare_record" "fastmail_mx" {
  count    = 2
  comment  = "Fastmail MX"
  name     = var.domain_name
  priority = (count.index + 1) * 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "in${count.index + 1}-smtp.messagingengine.com"
  zone_id  = var.zone_id
}

resource "cloudflare_record" "fastmail_spf" {
  comment = "Fastmail SPF"
  name    = var.domain_name
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:spf.messagingengine.com ?all"
  zone_id = var.zone_id
}

resource "cloudflare_record" "fastmail_dkim" {
  count   = 3
  comment = "Fastmail DKIM"
  name    = "fm${count.index + 1}._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "fm${count.index + 1}.${var.domain_name}.dkim.fmhosted.com"
  zone_id = var.zone_id
}
