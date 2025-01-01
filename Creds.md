# Generate Service Principal

```sh
az ad sp create-for-rbac --name terraform-cli --role Contributor --scopes /subscriptions/3d63cb20-9cbf-4b7f-ad0b-0357bff7a436
```
```json
{
  "clientId": "<Client ID>",
  "clientSecret": "<Client Secret>",
  "subscriptionId": "<Subscription ID>",
  "tenantId": "<Tenant ID>"
}
```