data "aws_connect_routing_profile" "connect_routing_profile_lookup" {
  for_each = var.connect_routing_profile_lookup

  instance_id        = each.value.instance_id
  name               = each.value.name
  region             = each.value.region
  routing_profile_id = each.value.routing_profile_id
  tags               = each.value.tags
}

