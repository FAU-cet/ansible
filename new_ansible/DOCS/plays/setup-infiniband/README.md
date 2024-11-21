# Setup InfiniBand
> [!WARNING]
> this will install the RHEL driver not The MLNX/DOCA-OFED. This causes has massiv problems with InfiniBand NDR and should there for olny be used with older InfiniBand versions

All the unsers will be added to rdma group which has no limits for locking memory.
This installes the InfiniBand driver from the Distribution repos on `all` nodes and installs opensm on the `head` node.
InfiniBand debug tools like `ibdiagnet` are installed from mellanox. This playbook will also configure IP addresses for the IB interfaces. 
## Vars
-  `IB_IPaddresses`
  -  values: a list of valid IP addresses
  -  Default: none
-  `IBnetmask`
  -  values: a valid subnet mask
  -  Default: none
-  `clusterUsers`
  -  values: a list of usersnames
  -  Default: none
-  `override_IB_IPaddress`
  -  Default: false
-  `ignore_unactive_IB_interface`
  -  wenn true interfaces that are down will be scipt 
  -  values: a boolean
  -  Default: true
## Roles
- [untlimit-rdma-users](../../roles/unlimit-rdma-users)
- [intsall-package](../../roles/install-package)
- [configure-ib-ip](../../roles/configure-ib-ip)
- [enable-autostart](../../roles/enable-autostart)
- [install-infinibandDebug](../../roles/install-infinibandDebug)
