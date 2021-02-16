# Remove multiple users to an Active Directory Group
# Note to create a csv file with the list of AD usernames
# Replace group name with the group name you want to remove the users from

Import-Csv -Path “C:\Temp\users.csv” | ForEach-Object {Remove-ADGroupMember -Identity “Group-Name” -Members $_.’User-Name’ -Confirm:$false}