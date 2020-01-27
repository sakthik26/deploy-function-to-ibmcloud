#!/bin/bash

ibmcloud plugin install cloud-functions
ibmcloud plugin list
ibmcloud login --apikey ${IBM_CLOUD_API_KEY} -r ${IBM_CLOUD_REGION}
ibmcloud target -o ${IBM_CLOUD_ORG} -s ${IBM_CLOUD_SPACE}
ibmcloud fn deploy --manifest manifest.yml
ibmcloud fn list
