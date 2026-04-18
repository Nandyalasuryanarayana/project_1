# jenkins_alb

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_jenkins_alb"></a> [jenkins\_alb](#module\_jenkins\_alb) | ../../../reusable_modules/alb | n/a |
| <a name="module_jenkins_alb_route_53_record"></a> [jenkins\_alb\_route\_53\_record](#module\_jenkins\_alb\_route\_53\_record) | ../../../reusable_modules/route_53_records | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_name"></a> [alb\_name](#input\_alb\_name) | n/a | `any` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `any` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet_az1_name"></a> [pub\_subnet\_az1\_name](#input\_pub\_subnet\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet_az2_name"></a> [pub\_subnet\_az2\_name](#input\_pub\_subnet\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_record_name"></a> [record\_name](#input\_record\_name) | Name of the Route 53 record (e.g., cdn.example.com) | `string` | n/a | yes |
| <a name="input_record_type"></a> [record\_type](#input\_record\_type) | Type of Route 53 record to create (CNAME, A, TXT, etc.) | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | List of records for the Route 53 record (e.g., IP addresses, domain names) | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | n/a | `any` | n/a | yes |
| <a name="input_tg_name"></a> [tg\_name](#input\_tg\_name) | n/a | `any` | n/a | yes |
| <a name="input_tg_protocol"></a> [tg\_protocol](#input\_tg\_protocol) | n/a | `any` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Time To Live (TTL) for the Route 53 record | `number` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `any` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Route 53 hosted zone ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
