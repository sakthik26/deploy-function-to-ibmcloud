# Deploy OpenWhisk Functions to IBM Cloud

Trying to deploy an openwhisk action to ibm cloud, that reads environment variables

Using: <https://github.com/apache/openwhisk-wskdeploy/blob/master/docs/wskdeploy_action_env_var_parms.md#actions> as a basis

The gist of it is:

```bash
ibmcloud fn deploy --auth bluemixkey --namespace foo --manifest somefile.yml
```
