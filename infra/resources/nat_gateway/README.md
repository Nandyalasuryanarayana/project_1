# nat_gateway

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nat_gateway"></a> [nat\_gateway](#module\_nat\_gateway) | ../../reusable_modules/nat_gateway | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_subnet_az1_name"></a> [app\_subnet\_az1\_name](#input\_app\_subnet\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_app_subnet_az2_name"></a> [app\_subnet\_az2\_name](#input\_app\_subnet\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_data_subnet_az1_name"></a> [data\_subnet\_az1\_name](#input\_data\_subnet\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_data_subnet_az2_name"></a> [data\_subnet\_az2\_name](#input\_data\_subnet\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_eks_master_components_subnet_az1"></a> [eks\_master\_components\_subnet\_az1](#input\_eks\_master\_components\_subnet\_az1) | n/a | `any` | n/a | yes |
| <a name="input_eks_master_components_subnet_az2"></a> [eks\_master\_components\_subnet\_az2](#input\_eks\_master\_components\_subnet\_az2) | n/a | `any` | n/a | yes |
| <a name="input_eks_master_components_subnets_route_table_association"></a> [eks\_master\_components\_subnets\_route\_table\_association](#input\_eks\_master\_components\_subnets\_route\_table\_association) | n/a | `bool` | n/a | yes |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | n/a | `any` | n/a | yes |
| <a name="input_nat_gateway_az1_name"></a> [nat\_gateway\_az1\_name](#input\_nat\_gateway\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_nat_gateway_az2_name"></a> [nat\_gateway\_az2\_name](#input\_nat\_gateway\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_nat_gateway_eip_az1_name"></a> [nat\_gateway\_eip\_az1\_name](#input\_nat\_gateway\_eip\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_nat_gateway_eip_az2_name"></a> [nat\_gateway\_eip\_az2\_name](#input\_nat\_gateway\_eip\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_private_route_table_az1_name"></a> [private\_route\_table\_az1\_name](#input\_private\_route\_table\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_private_route_table_az2_name"></a> [private\_route\_table\_az2\_name](#input\_private\_route\_table\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet_az1_name"></a> [pub\_subnet\_az1\_name](#input\_pub\_subnet\_az1\_name) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet_az2_name"></a> [pub\_subnet\_az2\_name](#input\_pub\_subnet\_az2\_name) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
