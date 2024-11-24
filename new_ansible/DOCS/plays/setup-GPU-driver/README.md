# setup-GPU-driver
This playbook will install the propreiityr nvidia GPU driver on all nodes that belong to the `GPU` group. 
Before it will install it will check if a driver named nvidia and no driver named nouveau is load. 
if so the is no nead to contiuy for this node an the play will end for that particular node. 
If not the play will block the nouvean open source driver. This requires a reboot! 
After that the Offical nvidia GPU driver will be installed. Eiter from the repo porvided by nvidia or via a run file from nvidia. Wen "latest" then the repo is used othervise the the run file is downloaded. If installing before MLNX-OFED `nvidia-peermem` migth not work.
## Vars
- `gpuDriverVersion`
  -  Values: a valid GPU driver version or "latest"
  -  Default: none
- `installerTmpFolder`
  - Values: a path that exist on the nodes (sould not be shared) or none if using repo
  - Default: none
