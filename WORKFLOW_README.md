# How to use workflows

1. Add AZURE_CREDENTIALS secret (Service Principal JSON) to the repo secrets.
2. Run rg.deploy.yml to create resource group (subscription deployment).
3. Run individual workflows (keyvault.deploy.yml, acr.deploy.yml, etc.) specifying environment and rgName.
4. To recover a single deleted resource, run its workflow; it will perform a resource-group deployment and create missing resource(s).
