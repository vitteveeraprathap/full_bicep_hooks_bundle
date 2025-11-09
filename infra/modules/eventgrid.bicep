targetScope = 'resourceGroup'

param topicName string
param location string = resourceGroup().location

resource topic 'Microsoft.EventGrid/topics@2021-06-01' = {
  name: topicName
  location: location
  properties: {}
}

output topicName string = topic.name
output topicId string = topic.id
