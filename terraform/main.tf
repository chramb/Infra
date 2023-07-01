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
