targetScope = 'subscription'

@description('Resource group name')
param rgName string

@description('Location')
param location string = 'southeastasia'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  tags: {
    createdBy: 'github-actions'
  }
}

output rgNameOut string = rg.name
output rgId string = rg.id
