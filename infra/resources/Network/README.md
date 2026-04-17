# Network

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../reusable_modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_eks_master_components_subnets"></a> [create\_eks\_master\_components\_subnets](#input\_create\_eks\_master\_components\_subnets) | n/a | `bool` | n/a | yes |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | n/a | `any` | n/a | yes |
| <a name="input_private_app_subnet_az1_cidr"></a> [private\_app\_subnet\_az1\_cidr](#input\_private\_app\_subnet\_az1\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_private_app_subnet_az2_cidr"></a> [private\_app\_subnet\_az2\_cidr](#input\_private\_app\_subnet\_az2\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_private_data_subnet_az1_cidr"></a> [private\_data\_subnet\_az1\_cidr](#input\_private\_data\_subnet\_az1\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_private_data_subnet_az2_cidr"></a> [private\_data\_subnet\_az2\_cidr](#input\_private\_data\_subnet\_az2\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_private_eks_master_components_subnet_az1_cidr"></a> [private\_eks\_master\_components\_subnet\_az1\_cidr](#input\_private\_eks\_master\_components\_subnet\_az1\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_private_eks_master_components_subnet_az2_cidr"></a> [private\_eks\_master\_components\_subnet\_az2\_cidr](#input\_private\_eks\_master\_components\_subnet\_az2\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet_az1_cidr"></a> [pub\_subnet\_az1\_cidr](#input\_pub\_subnet\_az1\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet_az2_cidr"></a> [pub\_subnet\_az2\_cidr](#input\_pub\_subnet\_az2\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | n/a | `any` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment_name"></a> [environment\_name](#output\_environment\_name) | n/a |
| <a name="output_private_app_subnet_az1_cidr"></a> [private\_app\_subnet\_az1\_cidr](#output\_private\_app\_subnet\_az1\_cidr) | n/a |
| <a name="output_private_app_subnet_az2_cidr"></a> [private\_app\_subnet\_az2\_cidr](#output\_private\_app\_subnet\_az2\_cidr) | n/a |
| <a name="output_private_data_subnet_az1_cidr"></a> [private\_data\_subnet\_az1\_cidr](#output\_private\_data\_subnet\_az1\_cidr) | n/a |
| <a name="output_private_data_subnet_az2_cidr"></a> [private\_data\_subnet\_az2\_cidr](#output\_private\_data\_subnet\_az2\_cidr) | n/a |
| <a name="output_pub_subnet_az1_cidr"></a> [pub\_subnet\_az1\_cidr](#output\_pub\_subnet\_az1\_cidr) | n/a |
| <a name="output_pub_subnet_az2_cidr"></a> [pub\_subnet\_az2\_cidr](#output\_pub\_subnet\_az2\_cidr) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
