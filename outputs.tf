output lab-id {
    value = "${random_id.labid.hex}"
}

output "gen-node-public" {
  value = [
    for instance in aws_instance.generator_nodes:
    instance.public_ip
  ]
}

output "gen-node-private" {
  value = [
    for instance in aws_instance.generator_nodes:
    instance.private_ip
  ]
}

output "gen-node-names" {
  value = [
    for instance in aws_instance.generator_nodes:
    lookup(instance.tags, "Name")
  ]
}
