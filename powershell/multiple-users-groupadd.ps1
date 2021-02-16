# Add multiple users to an Active Directory Group
# Note to create a a csv file with the list of AD usernames
# Replace group name with the group name you want to add the users to

Import-Module ActiveDirectory 
Import-Csv -Path “C:\Temp\users.csv” | ForEach-Object {Add-ADGroupMember -Identity “Group-Name” -Members $_.’User-Name’}

