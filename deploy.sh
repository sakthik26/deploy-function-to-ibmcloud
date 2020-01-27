#!/bin/bash

ibmcloud plugin list
ibmcloud login --apikey ${IBM_CLOUD_API_KEY} > /dev/null 2>&1
ibmcloud fn deploy --manifest manifest.yml --auth ${IBM_CLOUD_API_KEY} --namespace {IBM_CLOUD_NAMESPACE}
