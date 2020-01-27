#!/bin/bash

ibmcloud plugin install cloud-functions
ibmcloud plugin list
ibmcloud login --apikey ${IBM_CLOUD_API_KEY}
ibmcloud fn deploy --manifest manifest.yml --namespace ${IBM_CLOUD_NAMESPACE}
ibmcloud fn list
