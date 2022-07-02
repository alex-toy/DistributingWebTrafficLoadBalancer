"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"

################################################################
"CREATE A VM :"

$Global:VMName = "web02lb"
$Global:ImageName = "Win2022AzureEditionCore"
$Global:Size = "Standard_L8s_v2"
$Global:AdminUsername = "iisadmin"
$Global:AdminPassword = "iisadmin"
$Global:Port = "80"
$Global:storageSku = "Standard_HDD"

az vm create `
  --resource-group $RGName `
  --name $VMName `
  --location $RGLocation `
  --image $ImageName `
  --size $Size `
  --admin-username $AdminUsername `
  --admin-password $AdminPassword `
  --generate-ssh-keys `
  --vnet-name $vnetName `
  --subnet $SUBNETName `
  --verbose


az vm run-command invoke `
  --resource-group $RGName `
  --name $VMName `
  --command-id RunPowerShellScript `
  --scripts "Install-WindowsFeature -name Web-Server -IncludeManagementTools"


az vm open-port  `
  --resource-group $RGName `
  --name $VMName `
  --port 80 








