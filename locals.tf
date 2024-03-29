locals {
  default_region = "us-east-1"

  vpc_name = "tc-vpc"

  bucket = {
    name      = "fiapsoat2grupo13-cdn"
    log       = "log-fiapsoat2grupo13-cdn"
    origin_id = "fiapsoat2grupo13-cdn-origin"
  }

  lambda_signer = "json-web-token-signer"

  service_cluster = {
    name = "tech-challenge"

    provider = {
      name   = "FARGATE_SPOT"
      weight = 100
      base   = 1
    }
  }
}