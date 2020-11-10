## Requirements

No requirements.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| email | Your Email Address, or the value used to match the ResourceOwner tag on the EC2s | `string` | n/a | yes |
| name | Your Name, or the value used to match the Name tag on the EC2s | `string` | n/a | yes |
| target | Target for IP allocation | `string` | `"blue"` | no |

## Outputs

| Name | Description |
|------|-------------|
| eip | Public IP of the EIP |
| eip\_association | Instance ID of the current target instance. |

