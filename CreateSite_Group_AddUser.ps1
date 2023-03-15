#Provide your SharePoint Online Admin center URL
$AdminSiteURL = "https://8n1q68-admin.sharepoint.com/"
#$AdminSiteURL = "https://<Tenant_Name>-admin.sharepoint.com"
  
#Connect to SharePoint Tenant Admin Site
try {
    Connect-PnPOnline -Url $AdminSiteURL -Interactive
New-PnPSite -Type TeamSiteWithoutMicrosoft365Group -Title "New Site by PS Script 4" -Url "https://8n1q68.sharepoint.com/Sites/NewSiteFromPSScript4"
New-PnPGroup -Title "Custom"
Get-PnPGroupMembers -Identity "Custom"
Add-PnPUserToGroup -LoginName AdeleV@8n1q68.onmicrosoft.com -Identity "Custom"


}
catch {
    <#Do this if a terminating exception happens#>

    Write-Host "$($_.Exception.Message)" -Foregroundcolor Red

}
Disconnect-PnPOnline