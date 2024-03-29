# GitHub Module

## Introduction

This module will created a Github repository and team adding the members provided.<br />
<br />

<!--- BEGIN_TF_DOCS --->
## Providers

| Name | Version |
|------|---------|
| github | >= 2.6.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| product\_name | Name of the product, this will be used in the team and respoistory name | `string` | n/a | yes |
| user\_names | List of users to add to this repository | `list(map(any))` | n/a | yes |

## Outputs

No output.
<!--- END_TF_DOCS --->

<br />
For more information view:<br />
https://www.terraform.io/docs/providers/github/index.html
<br />

## Example

~~~~
provider "github" {
  token        = " "
  organization = " "
}

module "github" {
  source = "git@github.com/LexisNexis-Terraform/terraform-github-repo?ref=v1.0.0"

  product_name = "Example Application API"
  user_names   = [
    {"ad_username" = "example@domain.name", "github_username" = "gitexample"}, 
    {"ad_username" = "example2@domain.name", "github_username" = "gitexample2"},
  ]
}
~~~~