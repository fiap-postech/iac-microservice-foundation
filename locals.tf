locals {
  default_region = "us-east-1"

  vpc_name = "tc-vpc"

  bucket = {
    name      = "tech-challenge-cdn"
    log       = "log-tech-challenge-cdn"
    origin_id = "tech-challenge-cdn-origin"
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