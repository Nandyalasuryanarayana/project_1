# eks_cluster

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.32.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | git::https://github.com/DriveX-Mobility-Private-Limited/terraform-aws-eks-production-cluster.git | master |

## Resources

| Name | Type |
|------|------|
| [aws_security_group_rule.prod_eks_node_vpc_cidr_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_config_map_v1_data.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map_v1_data) | resource |
| [aws_security_group.prod_eks_node_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addon_aws_ebs_csi_driver"></a> [addon\_aws\_ebs\_csi\_driver](#input\_addon\_aws\_ebs\_csi\_driver) | The version of the AWS EBS CSI driver addon to use in the cluster. | `string` | n/a | yes |
| <a name="input_addon_coredns"></a> [addon\_coredns](#input\_addon\_coredns) | The version of the CoreDNS addon to use in the cluster. | `string` | n/a | yes |
| <a name="input_addon_kube_proxy"></a> [addon\_kube\_proxy](#input\_addon\_kube\_proxy) | The version of the kube-proxy addon to use in the cluster. | `string` | n/a | yes |
| <a name="input_addon_vpc_cni"></a> [addon\_vpc\_cni](#input\_addon\_vpc\_cni) | The version of the VPC CNI addon to use in the cluster. | `string` | n/a | yes |
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | The type of AMI to use for the worker nodes (e.g., AL2\_x86\_64). | `string` | n/a | yes |
| <a name="input_attach_cluster_primary_security_group"></a> [attach\_cluster\_primary\_security\_group](#input\_attach\_cluster\_primary\_security\_group) | Indicates whether to attach the primary security group to the EKS cluster. | `bool` | n/a | yes |
| <a name="input_auth_configmap_namespace"></a> [auth\_configmap\_namespace](#input\_auth\_configmap\_namespace) | auth\_config\_map namespace | `string` | n/a | yes |
| <a name="input_aws_auth_accounts"></a> [aws\_auth\_accounts](#input\_aws\_auth\_accounts) | List of account maps to add to the aws-auth configmap | `list(any)` | n/a | yes |
| <a name="input_aws_auth_config_name"></a> [aws\_auth\_config\_name](#input\_aws\_auth\_config\_name) | auth\_config\_map name | `string` | n/a | yes |
| <a name="input_aws_auth_roles"></a> [aws\_auth\_roles](#input\_aws\_auth\_roles) | List of role maps to add to the aws-auth configmap | `list(any)` | n/a | yes |
| <a name="input_aws_auth_users"></a> [aws\_auth\_users](#input\_aws\_auth\_users) | List of user maps to add to the aws-auth configmap | `list(any)` | n/a | yes |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Indicates whether the EKS cluster endpoint is publicly accessible. | `bool` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the EKS cluster. | `string` | n/a | yes |
| <a name="input_cluster_tag"></a> [cluster\_tag](#input\_cluster\_tag) | The tag to apply to the cluster resources. | `string` | n/a | yes |
| <a name="input_cluster_tools_group_capacity_type"></a> [cluster\_tools\_group\_capacity\_type](#input\_cluster\_tools\_group\_capacity\_type) | The capacity type for the node group | `string` | n/a | yes |
| <a name="input_cluster_tools_node_group_desired_size"></a> [cluster\_tools\_node\_group\_desired\_size](#input\_cluster\_tools\_node\_group\_desired\_size) | The desired number of nodes in the node group | `number` | n/a | yes |
| <a name="input_cluster_tools_node_group_instance_types"></a> [cluster\_tools\_node\_group\_instance\_types](#input\_cluster\_tools\_node\_group\_instance\_types) | The instance types for the node group | `list(string)` | n/a | yes |
| <a name="input_cluster_tools_node_group_max_size"></a> [cluster\_tools\_node\_group\_max\_size](#input\_cluster\_tools\_node\_group\_max\_size) | The maximum number of nodes in the node group | `number` | n/a | yes |
| <a name="input_cluster_tools_node_group_min_size"></a> [cluster\_tools\_node\_group\_min\_size](#input\_cluster\_tools\_node\_group\_min\_size) | The minimum number of nodes in the node group | `number` | n/a | yes |
| <a name="input_cluster_tools_node_group_name"></a> [cluster\_tools\_node\_group\_name](#input\_cluster\_tools\_node\_group\_name) | The name of the node group | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The version of the EKS cluster. | `string` | n/a | yes |
| <a name="input_control_plane_subnet_ids"></a> [control\_plane\_subnet\_ids](#input\_control\_plane\_subnet\_ids) | The list of subnet IDs for the EKS control plane. | `list(string)` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created (affects all resources) | `bool` | `true` | no |
| <a name="input_create_aws_auth_configmap"></a> [create\_aws\_auth\_configmap](#input\_create\_aws\_auth\_configmap) | Determines whether to create the aws-auth configmap. NOTE - this is only intended for scenarios where the configmap does not exist (i.e. - when using only self-managed node groups). Most users should use `manage_aws_auth_configmap` | `bool` | n/a | yes |
| <a name="input_data_warehouse_node_group_ami_type"></a> [data\_warehouse\_node\_group\_ami\_type](#input\_data\_warehouse\_node\_group\_ami\_type) | The ami types for the node group | `string` | n/a | yes |
| <a name="input_data_warehouse_node_group_capacity_type"></a> [data\_warehouse\_node\_group\_capacity\_type](#input\_data\_warehouse\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_data_warehouse_node_group_desired_size"></a> [data\_warehouse\_node\_group\_desired\_size](#input\_data\_warehouse\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_data_warehouse_node_group_instance_types"></a> [data\_warehouse\_node\_group\_instance\_types](#input\_data\_warehouse\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_data_warehouse_node_group_max_size"></a> [data\_warehouse\_node\_group\_max\_size](#input\_data\_warehouse\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_data_warehouse_node_group_min_size"></a> [data\_warehouse\_node\_group\_min\_size](#input\_data\_warehouse\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_data_warehouse_node_group_name"></a> [data\_warehouse\_node\_group\_name](#input\_data\_warehouse\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_default_instance_types"></a> [default\_instance\_types](#input\_default\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_knull_pointer_lens_node_group_capacity_type"></a> [knull\_pointer\_lens\_node\_group\_capacity\_type](#input\_knull\_pointer\_lens\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_knull_pointer_lens_node_group_desired_size"></a> [knull\_pointer\_lens\_node\_group\_desired\_size](#input\_knull\_pointer\_lens\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_knull_pointer_lens_node_group_instance_types"></a> [knull\_pointer\_lens\_node\_group\_instance\_types](#input\_knull\_pointer\_lens\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_knull_pointer_lens_node_group_max_size"></a> [knull\_pointer\_lens\_node\_group\_max\_size](#input\_knull\_pointer\_lens\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_knull_pointer_lens_node_group_min_size"></a> [knull\_pointer\_lens\_node\_group\_min\_size](#input\_knull\_pointer\_lens\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_knull_pointer_lens_node_group_name"></a> [knull\_pointer\_lens\_node\_group\_name](#input\_knull\_pointer\_lens\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_llm_workloads_node_group_capacity_type"></a> [llm\_workloads\_node\_group\_capacity\_type](#input\_llm\_workloads\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_llm_workloads_node_group_desired_size"></a> [llm\_workloads\_node\_group\_desired\_size](#input\_llm\_workloads\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_llm_workloads_node_group_instance_types"></a> [llm\_workloads\_node\_group\_instance\_types](#input\_llm\_workloads\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_llm_workloads_node_group_max_size"></a> [llm\_workloads\_node\_group\_max\_size](#input\_llm\_workloads\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_llm_workloads_node_group_min_size"></a> [llm\_workloads\_node\_group\_min\_size](#input\_llm\_workloads\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_llm_workloads_node_group_name"></a> [llm\_workloads\_node\_group\_name](#input\_llm\_workloads\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_manage_aws_auth_configmap"></a> [manage\_aws\_auth\_configmap](#input\_manage\_aws\_auth\_configmap) | Determines whether to manage the aws-auth configmap | `bool` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | reachx node group name | `string` | n/a | yes |
| <a name="input_posthog_node_group_ami_type"></a> [posthog\_node\_group\_ami\_type](#input\_posthog\_node\_group\_ami\_type) | The ami types for the node group | `string` | n/a | yes |
| <a name="input_posthog_node_group_capacity_type"></a> [posthog\_node\_group\_capacity\_type](#input\_posthog\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_posthog_node_group_desired_size"></a> [posthog\_node\_group\_desired\_size](#input\_posthog\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_posthog_node_group_instance_types"></a> [posthog\_node\_group\_instance\_types](#input\_posthog\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_posthog_node_group_max_size"></a> [posthog\_node\_group\_max\_size](#input\_posthog\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_posthog_node_group_min_size"></a> [posthog\_node\_group\_min\_size](#input\_posthog\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_posthog_node_group_name"></a> [posthog\_node\_group\_name](#input\_posthog\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_procx_node_group_capacity_type"></a> [procx\_node\_group\_capacity\_type](#input\_procx\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_procx_node_group_desired_size"></a> [procx\_node\_group\_desired\_size](#input\_procx\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_procx_node_group_instance_types"></a> [procx\_node\_group\_instance\_types](#input\_procx\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_procx_node_group_max_size"></a> [procx\_node\_group\_max\_size](#input\_procx\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_procx_node_group_min_size"></a> [procx\_node\_group\_min\_size](#input\_procx\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_procx_node_group_name"></a> [procx\_node\_group\_name](#input\_procx\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_profile_user"></a> [profile\_user](#input\_profile\_user) | The AWS profile user to use for authentication. | `string` | n/a | yes |
| <a name="input_reachx_galaxy_celery_node_group_capacity_type"></a> [reachx\_galaxy\_celery\_node\_group\_capacity\_type](#input\_reachx\_galaxy\_celery\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_reachx_galaxy_celery_node_group_desired_size"></a> [reachx\_galaxy\_celery\_node\_group\_desired\_size](#input\_reachx\_galaxy\_celery\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_reachx_galaxy_celery_node_group_instance_types"></a> [reachx\_galaxy\_celery\_node\_group\_instance\_types](#input\_reachx\_galaxy\_celery\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_reachx_galaxy_celery_node_group_max_size"></a> [reachx\_galaxy\_celery\_node\_group\_max\_size](#input\_reachx\_galaxy\_celery\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_reachx_galaxy_celery_node_group_min_size"></a> [reachx\_galaxy\_celery\_node\_group\_min\_size](#input\_reachx\_galaxy\_celery\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_reachx_galaxy_celery_node_group_name"></a> [reachx\_galaxy\_celery\_node\_group\_name](#input\_reachx\_galaxy\_celery\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_reachx_node_group_capacity_type"></a> [reachx\_node\_group\_capacity\_type](#input\_reachx\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_reachx_node_group_desired_size"></a> [reachx\_node\_group\_desired\_size](#input\_reachx\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_reachx_node_group_instance_types"></a> [reachx\_node\_group\_instance\_types](#input\_reachx\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_reachx_node_group_max_size"></a> [reachx\_node\_group\_max\_size](#input\_reachx\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_reachx_node_group_min_size"></a> [reachx\_node\_group\_min\_size](#input\_reachx\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_reachx_node_group_name"></a> [reachx\_node\_group\_name](#input\_reachx\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_reachx_vortex_celery_node_group_capacity_type"></a> [reachx\_vortex\_celery\_node\_group\_capacity\_type](#input\_reachx\_vortex\_celery\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_reachx_vortex_celery_node_group_desired_size"></a> [reachx\_vortex\_celery\_node\_group\_desired\_size](#input\_reachx\_vortex\_celery\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_reachx_vortex_celery_node_group_instance_types"></a> [reachx\_vortex\_celery\_node\_group\_instance\_types](#input\_reachx\_vortex\_celery\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_reachx_vortex_celery_node_group_max_size"></a> [reachx\_vortex\_celery\_node\_group\_max\_size](#input\_reachx\_vortex\_celery\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_reachx_vortex_celery_node_group_min_size"></a> [reachx\_vortex\_celery\_node\_group\_min\_size](#input\_reachx\_vortex\_celery\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_reachx_vortex_celery_node_group_name"></a> [reachx\_vortex\_celery\_node\_group\_name](#input\_reachx\_vortex\_celery\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The list of subnet IDs where the worker nodes will be deployed. | `list(string)` | n/a | yes |
| <a name="input_target_group_arns_string"></a> [target\_group\_arns\_string](#input\_target\_group\_arns\_string) | Comma-separated list of target group ARNs | `string` | n/a | yes |
| <a name="input_typesense_node_group_capacity_type"></a> [typesense\_node\_group\_capacity\_type](#input\_typesense\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_typesense_node_group_desired_size"></a> [typesense\_node\_group\_desired\_size](#input\_typesense\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_typesense_node_group_instance_types"></a> [typesense\_node\_group\_instance\_types](#input\_typesense\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_typesense_node_group_max_size"></a> [typesense\_node\_group\_max\_size](#input\_typesense\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_typesense_node_group_min_size"></a> [typesense\_node\_group\_min\_size](#input\_typesense\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_typesense_node_group_name"></a> [typesense\_node\_group\_name](#input\_typesense\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_vision_node_group_capacity_type"></a> [vision\_node\_group\_capacity\_type](#input\_vision\_node\_group\_capacity\_type) | The capacity type for the EKS managed node group (e.g., ON\_DEMAND, SPOT). | `string` | n/a | yes |
| <a name="input_vision_node_group_desired_size"></a> [vision\_node\_group\_desired\_size](#input\_vision\_node\_group\_desired\_size) | The list of instance types for the EKS worker nodes. | `number` | n/a | yes |
| <a name="input_vision_node_group_instance_types"></a> [vision\_node\_group\_instance\_types](#input\_vision\_node\_group\_instance\_types) | The list of instance types for the EKS worker nodes. | `list(string)` | n/a | yes |
| <a name="input_vision_node_group_max_size"></a> [vision\_node\_group\_max\_size](#input\_vision\_node\_group\_max\_size) | The maximum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_vision_node_group_min_size"></a> [vision\_node\_group\_min\_size](#input\_vision\_node\_group\_min\_size) | The minimum number of nodes in the EKS managed node group. | `number` | n/a | yes |
| <a name="input_vision_node_group_name"></a> [vision\_node\_group\_name](#input\_vision\_node\_group\_name) | The name of the reachx EKS node group. | `string` | n/a | yes |
| <a name="input_vpc_cidr_rule_description"></a> [vpc\_cidr\_rule\_description](#input\_vpc\_cidr\_rule\_description) | Description for the security group rule allowing all traffic from VPC CIDR | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC where the cluster and resources will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addon_aws_ebs_csi_driver_output"></a> [addon\_aws\_ebs\_csi\_driver\_output](#output\_addon\_aws\_ebs\_csi\_driver\_output) | n/a |
| <a name="output_addon_coredns_output"></a> [addon\_coredns\_output](#output\_addon\_coredns\_output) | n/a |
| <a name="output_addon_kube_proxy_output"></a> [addon\_kube\_proxy\_output](#output\_addon\_kube\_proxy\_output) | n/a |
| <a name="output_addon_vpc_cni_output"></a> [addon\_vpc\_cni\_output](#output\_addon\_vpc\_cni\_output) | n/a |
| <a name="output_ami_type_output"></a> [ami\_type\_output](#output\_ami\_type\_output) | n/a |
| <a name="output_cluster_name_output"></a> [cluster\_name\_output](#output\_cluster\_name\_output) | n/a |
| <a name="output_cluster_tag_output"></a> [cluster\_tag\_output](#output\_cluster\_tag\_output) | n/a |
| <a name="output_control_plane_subnet_ids_output"></a> [control\_plane\_subnet\_ids\_output](#output\_control\_plane\_subnet\_ids\_output) | n/a |
| <a name="output_eks_node_security_group_id"></a> [eks\_node\_security\_group\_id](#output\_eks\_node\_security\_group\_id) | ID of the EKS node security group |
| <a name="output_profile_user_output"></a> [profile\_user\_output](#output\_profile\_user\_output) | n/a |
| <a name="output_security_group_rule_id"></a> [security\_group\_rule\_id](#output\_security\_group\_rule\_id) | ID of the created security group rule |
| <a name="output_subnet_ids_output"></a> [subnet\_ids\_output](#output\_subnet\_ids\_output) | n/a |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | The CIDR block of the VPC |
| <a name="output_vpc_id_output"></a> [vpc\_id\_output](#output\_vpc\_id\_output) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
