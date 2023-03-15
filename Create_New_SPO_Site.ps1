#Provide your SharePoint Online Admin center URL
$AdminSiteURL = "https://8n1q68-admin.sharepoint.com/"
#$AdminSiteURL = "https://<Tenant_Name>-admin.sharepoint.com"
  
#Connect to SharePoint Tenant Admin Site
Connect-PnPOnline -Url $AdminSiteURL -Interactive
New-PnPSite -Type TeamSiteWithoutMicrosoft365Group -Title "New Site by PS Script" -Url "https://8n1q68.sharepoint.com/Sites/NewSiteFromPSScript"
