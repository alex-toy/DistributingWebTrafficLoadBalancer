"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"CREATE LOAD BALANCER :"

az network lb create  `
    --resource-group $RGName `
    --name loadbalancer1 `
    --public-ip-address loadbalancerIP `
    --public-ip-address-allocation Dynamic `
    --sku Standard
    # [--backend-pool-name]
    # [--edge-zone]
    # [--frontend-ip-name]
    # [--frontend-ip-zone {1, 2, 3}]
    # [--location]
    # [--no-wait]
    # [--private-ip-address]
    # [--private-ip-address-version {IPv4, IPv6}]
    # [--public-ip-address]
    # [--public-ip-address-allocation {Dynamic, Static}]
    # [--public-ip-dns-name]
    # [--public-ip-zone {1, 2, 3}]
    # [--sku {Basic, Gateway, Standard}]
    # [--subnet]
    # [--subnet-address-prefix]
    # [--tags]
    # [--validate]
    # [--vnet-address-prefix]
    # [--vnet-name]



    























    