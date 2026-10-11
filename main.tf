data "cloudflare_pipeline_sinks" "pipeline_sinks_lookup" {
  for_each = var.pipeline_sinks_lookup

  account_id  = each.value.account_id
  max_items   = each.value.max_items
  name        = each.value.name
  pipeline_id = each.value.pipeline_id
}

