# Setup Slurm
This play will install and configure the cluster to use slurm. 

## Vars
- `installerTmpFolder`

## Roles
- [`update`](../../roles/update)
- `enable-repos`
- `create-slurm-users`
- `enable-firewall-ports`
