#This script is to install powershell accross all systems in your domain environment

#step one is to specify all the computers
$Servers = "server0","server1","server2","server3" #specify the list of servers
foreach ($Server in $Servers){
Invoke-Command -ComputerName $Server -Filepath C:\InstallSNMP.ps1
}
Write-Host "Installed SNMP service on domain servers!"

<#
   This script was written with the purpose to install snmp on all domain systems or specified servers in an Active Directory environment.
   All computers should be joined to the AD domain.
#>