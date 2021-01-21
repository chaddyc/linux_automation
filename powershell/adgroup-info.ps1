# This script will prompt you the Active Directory group information and email it to your address
# Will prompt for group name and email address


#Set New line using OFS special Powershell variable
$OFS = "`n"
#Externally set input value as string
[string[]] $_GroupList= @()
#Get the input from the user
$__GroupList = READ-HOST "Enter List of AD Groups with spaces in between Group Names:"
#splitting the list of input as array by Comma & Empty Space
$__GroupList = $__GroupList.Split(',').Split(' ')
$OFS + $__GroupList

$Email = Read-Host "What is your email address:"


foreach ($group in $_GroupList) {
    Get-ADGroupMember -Identity $group
}
$group > c:ADgroupinfo.txt

$Sender = 'report@example.comt' #replace with your relevant information
Send-MailMessage -From $Sender -To $Email -Subject 'AD Group information Inquiry' -Body "Please see the attached document regarding AD group query." -Attachments .\ADgroup-info.txt -Priority Normal -DeliveryNotificationOption OnSuccess, OnFailure -SmtpServer 'smtp.domain.com'

Write-Host "AD Group Info Emailed."