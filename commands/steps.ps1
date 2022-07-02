################################################################
"resource Group :"

#southcentralus centralus francecentral westus2 eastus centralus 
$Global:RGLocation = "centralus"
$Global:RGName = "vmss-rg"
$Global:application_path = "web"


#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\Network\VN_create.ps1"

."commands\LoadBalancer\LB_create.ps1"

."commands\VirtualNetwork\VN_VMs_connect.ps1"

."commands\VirtualMachine\VM_create.ps1"







