# mulch-os-mock

## Requirements
* Virtual Box
* Vagrant

## Usage
TBD

### If provision fails
If failed in resolving hosts like this,

```
Could not retrieve mirrorlist http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=os&infra=stock error was
14: PYCURL ERROR 6 - "Couldn't resolve host 'mirrorlist.centos.org'"
```

please add nameserver setting in /etc/resolve.conf

```
nameserver 8.8.8.8
nameserver 8.8.4.4
```
