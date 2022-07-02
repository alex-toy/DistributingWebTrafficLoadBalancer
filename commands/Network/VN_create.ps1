"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"CREATE A VNET :"

$Global:VNETName = "loadbalancervnet"
$Global:SUBNETName = "vm-subnet"
$Global:NSGName = "webservers12"


az network vnet create `
    --resource-group $RGName `
    --location $RGLocation `
    --name $VNETName `
    --address-prefixes 10.1.0.0/16 `


az network vnet subnet create `
    --resource-group $RGName `
    --vnet-name $VNETName `
    --name $SUBNETName `
    --address-prefixes 10.1.1.0/24 


az network nsg create `
    --resource-group $RGName `
    --location $RGLocation `
    --name


az network nsg rule create `
    --resource-group $RGName `
    --name
    --nsg-name
    --priority
    # [--access {Allow, Deny}]
    # [--description]
    # [--destination-address-prefixes]
    # [--destination-asgs]
    # [--destination-port-ranges]
    # [--direction {Inbound, Outbound}]
    # [--protocol {*, Ah, Esp, Icmp, Tcp, Udp}]
    # [--source-address-prefixes]
    # [--source-asgs]
    # [--source-port-ranges]