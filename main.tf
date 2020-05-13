# Repository
resource "github_repository" "sre" {
  name = "tfe-sre-${local.repo_name}"
  auto_init  = true
}

# Team
resource "github_team" "sre" {
  name        = "tfe-sre-${local.repo_name}"
  description = "${var.product_name} Terraform Enterprise SRE Team"
}

resource "github_team_repository" "sre" {
  team_id    = github_team.sre.id
  repository = github_repository.sre.name
  permission = "maintain"
}

# Team Members
resource "github_team_membership" "members" {
  count = length(var.user_names)

  team_id  = github_team.sre.id
  username = var.user_names[count.index].github_username
  role     = "member"
}
