locals {
  default_region = "us-east-1"

  vpc_name = "tc-vpc"

  bucket = {
    name      = "tc-cdn"
    log       = "log-tc-cdn"
    origin_id = "tc-cdn-origin"
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