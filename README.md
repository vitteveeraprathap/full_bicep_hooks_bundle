# Full Bicep Hooks & Resource Deploy Bundle

This repo contains:
- Local git hooks (.githooks) that enforce commit message contains branch JIRA token for feature branches.
- GitHub Actions workflows to deploy individual resources on demand and to validate commits/branch names.
- Bicep modules for RG, KeyVault, ACR, Log Analytics, Storage Container, EventGrid.
- Parameter files per environment: dev/uat/prod.
- Workflows per resource for manual `workflow_dispatch` deployments.

Quick start:
1. Create a new GitHub repo and push these files to `main`.
2. Add `AZURE_CREDENTIALS` secret in repository settings (Actions secrets) - service principal JSON.
3. Run `scripts/install-hooks.sh` locally to enable hooks.
4. Run Actions workflows to create RG and resources, or use az CLI locally.
