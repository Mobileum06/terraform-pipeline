
resource_groups = {
  rg1 = {
    name     = "example-rg1"
    location = "centralindia"
  }
  rg2 = {
    name     = "example-rg2"
    location = "centralindia"
  }
}
virtual_networks = {
  vnet1 = {
    name                = "example-vnet1"
    location            = "centralindia"
    resource_group_name = "example-rg1"
    address_space       = ["10.0.0.0/16"]
  }

}
subnets = {
  subnet1 = {
    name                 = "example-subnet1"
    resource_group_name  = "example-rg1"
    virtual_network_name = "example-vnet1"
    address_prefixes     = ["10.0.0.0/18"]
  }




}
public_ips = {
  pip1 = {
    name                = "frontend-pip1"
    resource_group_name = "example-rg1"
    location            = "centralindia"
  }


}




nic = {
  nic1 = {
    name                 = "nic1"
    location             = "centralindia"
    resource_group_name  = "example-rg1"
    virtual_network_name = "example-vnet1"
    subnet_name          = "example-subnet1"
    publicip_name        = "frontend-pip1"
  }


}

nsg = {
  nsg1 = {
    name                = "nsg1"
    location            = "centralindia"
    resource_group_name = "example-rg1"
    nic_name            = "nic1"
    nsg_name            = "nsg1"
  }

}


nsg_nic_asso = {
  ngsnic1 = {
    nic_name            = "nic1"
    resource_group_name = "example-rg1"
    nsg_name            = "nsg1"
  }

 
}



