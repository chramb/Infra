terraform {
  cloud {
    workspaces {
      name = "infra"
    }
  }
}

module "github" {
  source = "./github"
}

module "cloudflare" {
  source                = "./cloudflare"
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_zone       = var.cloudflare_zone
}
