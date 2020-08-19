# snap-nhc
This repository contains the components needed to build the Node Health Check utility for HPC clusters.

The source for nhc can be found [here](https://github.com/mej/nhc).

### Build
Lxd and snapcraft are required to build this snap, if you don't already have them installed, run the following commands:
* `lxd` - `sudo snap install lxd && sudo lxd init --auto`
* `snapcraft` - `sudo snap install snapcraft --classic`

Once you have the build requirements installed, from the root of this repository:
```bash
snapcraft --use-lxd
```

### Installation
After the snap finishes building, you can install it with:
```bash
sudo snap install nhc_*_amd64.snap --classic --dangerous
```
* `--dangerous` - because we are installing a locally built snap, who's sha can't be verified through the snapstore.
* `--classic` - classic confinement is used to allow the snap to access system level resources.

### Configuration
To modify the Node Healthcheck configuration, edit the file located here:

    /var/snap/nhc/common/etc/nhc/nhc.conf


#### Copyright
* Omnivector Solutions (c) 2020

#### License
* MIT - see `LICENSE` file in this directory.
