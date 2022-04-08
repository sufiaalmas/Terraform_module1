terraform {
required_providers {
github = {
        source = "integrations/github"
        version = "4.3.2"
        }
    }
}

provider "github" {
token = "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"
}

resource "github_repository" "examplerepo" {
  name      = "terraformAccentureTraining7thApr"
  visibility = "public"
}

