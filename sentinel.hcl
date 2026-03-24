# security-baseline policy set
# Attach this to workspaces that manage AWS infrastructure.
# All three policies must pass for a plan to be applied.

policy "require-s3-versioning" {
  source            = "./policies/require-s3-versioning.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "require-resource-tags" {
  source            = "./policies/require-resource-tags.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "restrict-aws-regions" {
  source            = "./policies/restrict-aws-regions.sentinel"
  enforcement_level = "advisory"
}
