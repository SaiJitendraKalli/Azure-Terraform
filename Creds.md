# Generate Service Principal

```sh
az ad sp create-for-rbac --name terraform-cli --role Contributor --scopes /subscriptions/3d63cb20-9cbf-4b7f-ad0b-0357bff7a436
```
```json
{
  "clientId": "<Client ID>",
  "clientSecret": "<Client Secret>",
  "subscriptionId": "3d63cb20-9cbf-4b7f-ad0b-0357bff7a436",
  "tenantId": "9aab2f7d-b9c3-42e4-9502-3b107f25b574"
}
```