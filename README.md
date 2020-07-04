# Terraform AWS APIGateway Domain
Add a custom domain to an API Gateway resource

## Variables
### Input
| Variables               | Description                     | Default |
|:------------------------|:--------------------------------|:--------|
| domain_name             | Domain name to add the cert for |         |
| certificate_arn         | ARN of the certificate          |         |
| zone_id                 | Id of the zone                  |         |
| api_gateway_stage       | Name of the API gateway stage   | api     |
| api_gateway_rest_api_id | ID of the API Gateway rest api  |         |

## How to
Specify the module source and the provider information.

### Sample
```
provider "aws" {
    region = ""
    shared_credentials_file = ""
}

module "api-gateway-domain" {
    source = "github.com/Haplo-tech/Terraform.Module.AWS.APIGateway.Domain"
    domain_name = ""
    certificate_arn = ""
    zone_id = ""
    api_gateway_stage = ""
    api_gateway_rest_api_id = ""
}
```
