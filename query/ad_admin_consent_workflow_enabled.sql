select
  -- Required Columns
  id as resource,
  case
    when is_enabled then 'ok'
    else 'alarm'
  end status,
  case
    when is_enabled then 'Admin consent workflow is enabled.'
    else 'Admin consent workflow is disabled.'
  end reason,
  -- Additional Dimensions
  tenant_id as tenant
from
   azuread_admin_consent_request_policy;