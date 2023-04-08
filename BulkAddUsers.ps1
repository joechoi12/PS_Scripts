#Variables
$CSVPath  ="C:\Users\PS_Scripts\ListOfUsers.csv"
 
#Get data from CSV
$CSVData = Import-Csv $CSVPath
 
#Iterate through each row in CSV
ForEach($Row in $CSVData)
{
    Try { 
        #Connect to SharePoint Online Site
        Write-host "Connecting to Site: "$Row.SiteURL
        Connect-PnPOnline -Url $Row.SiteURL -Interactive
  
        #Get the group
        $Group = Get-PnPGroup -Identity $Row.GroupName
  
        #Add Each user to the Group
        Add-PnPGroupMember -LoginName $Row.UserAccount -Identity $Group
        Write-host -f Green "`tAdded User $($Row.UserAccount) to $($Group.Title)"
    }
    Catch {
        write-host -f Red "Error Adding User to Group:" $_.Exception.Message
    }
}


#Read more: https://www.sharepointdiary.com/2018/06/sharepoint-online-bulk-import-users-from-csv-using-powershell.html#ixzz7vo1Xwysm
