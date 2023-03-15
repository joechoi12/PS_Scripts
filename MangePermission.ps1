#Provide your SharePoint Online Admin center URL
#$AdminSiteURL = "https://8n1q68-admin.sharepoint.com/"
#$AdminSiteURL = "https://<Tenant_Name>-admin.sharepoint.com"
  
#Connect to SharePoint Tenant Admin Site
try {
    Connect-PnPOnline -Url "https://8n1q68.sharepoint.com/Sites/NewSiteFromPSScript4"  -Interactive

    Get-PnPSite -Includes RootWeb,ServerRelativeUrl
    Add-PnPGroupMember -LoginName AdeleV@8n1q68.onmicrosoft.com   -Group 4
#Add-PnPUserToGroup -LoginName AdeleV@8n1q68.onmicrosoft.com -Identity "Custom"


}
catch {
    <#Do this if a terminating exception happens#>

    Write-Host "$($_.Exception.Message)" -Foregroundcolor Red

}
Disconnect-PnPOnline