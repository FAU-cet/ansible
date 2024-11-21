# Setup Slurm
This play will install and configure the cluster to use slurm. 

## Vars
- `installerTmpFolder`
- `slurmVersion`
- `privateSSHkey`
- `rebuild`
- `reinstall`
- `zone`



Vars that would brick play wenn changed from default are not listed

## Roles
- [`update`](../../roles/update)
- [`enable-repos`](../../roles/enable-repos)
- [`create-slurm-users`](../../roles/create-slurm-users`)
- [`enable-firewall-ports`](../../roles/enable-firewall-ports)
- [`install-package`](../../roles/install-package)
- [`folder`](../../foleder)
- [`install-slurm`](../../install-slurm)
- [`munge-create-key`](../../munge-create-key)
- [`enable-autostart`](../../enable-autostart)
- [`allow-internode-ssh`](../../allow-internode-ssh)
- [`install-slurm-from-headnode`](../../install-slrum-from-head)
- [`munge-key-rollout`](../../munge-key-rollout)
- [`configure-slurm`](../../configure-slurm)
