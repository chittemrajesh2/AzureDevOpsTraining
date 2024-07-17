# Connecting Azure DevOps to Azure Cloud

Azure DevOps allows seamless integration with Azure Cloud services through service connections. These connections enable pipelines to deploy applications, manage resources, and access Azure functionalities directly from Azure DevOps.

## Methods to Connect Azure DevOps to Azure Cloud

### 1. Service Principal Authentication

Service Principal authentication involves creating a service principal in Azure Active Directory (AAD) and using its credentials to authenticate Azure DevOps to Azure Cloud.

#### Steps:

1. **Create Service Principal:**
   - Navigate to the Azure portal (https://portal.azure.com).
   - Go to Azure Active Directory > App registrations > New registration.
   - Register an application with a name and URL.
   - Note down the Application (client) ID and Directory (tenant) ID.

2. **Generate Client Secret:**
   - In the registered application, go to Certificates & secrets > New client secret.
   - Add a description, set expiry, and save the client secret value securely.

3. **Assign Roles:**
   - Assign necessary roles (e.g., Contributor) to the service principal at the subscription/resource group level for access.

4. **Create Service Connection in Azure DevOps:**
   - In Azure DevOps project, go to Project Settings > Service connections > New service connection > Azure Resource Manager.
   - Select authentication method as Service principal (automatic) or manually enter Client ID, Secret, Tenant ID, and Subscription ID.

5. **Verify Connection:**
   - Test the service connection to ensure Azure DevOps can authenticate and access Azure resources.

### 2. Managed Identity Authentication

Managed identities (System-assigned or User-assigned) can be used to authenticate Azure DevOps pipelines without storing explicit credentials.

#### Steps:

1. **Create Managed Identity:**
   - Create a managed identity either system-assigned or user-assigned in Azure portal for the Azure DevOps agent or service.

2. **Assign Roles:**
   - Assign necessary roles (e.g., Contributor) to the managed identity at the subscription/resource group level.

3. **Create Service Connection in Azure DevOps:**
   - In Azure DevOps project, go to Project Settings > Service connections > New service connection > Azure Resource Manager.
   - Select authentication method as Managed identity, choose the appropriate identity, and select the subscription.

4. **Verify Connection:**
   - Test the service connection to ensure Azure DevOps can authenticate and access Azure resources using the managed identity.



