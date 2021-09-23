output lab-id {
    value = "${lookup(aws_instance.couchbase_nodes[0].tags, "LabName")}"
}

output "gen-node-ips" {
  value = [
    for instance in aws_instance.generator_nodes:
    instance.public_ip
  ]
}

output "gen-node-names" {
  value = [
    for instance in aws_instance.generator_nodes:
    lookup(instance.tags, "Name")
  ]
}
