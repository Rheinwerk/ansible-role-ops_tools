ops_tools
=========
[![Build Status](https://github.com/Rheinwerk/ansible-role-ops_tools/actions/workflows/ci.yml/badge.svg)](https://github.com/Rheinwerk/ansible-role-ops_tools/actions/workflows/ci.yml)

Installs tools useful for ops analysis and problem diagnosis.

Requirements
------------

None.

Role Variables
--------------

`_ops_tools.tools` contains a list of tools to install. By default, the following packages will be installed:

- sysstat for `iostat`

- iotop

- sysdig

- atop

`_ops_tools.apt_repos` is an optional list of repositories, optionally with Signing Keys, to be added before the actual installation of packages.

Dependencies
------------

None.

Example Playbook
----------------

```
    - hosts: servers
      vars:
        OPS_TOOLS:
          apt_repos:
            - key_url: "https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public"
              repo_line: "deb http://download.draios.com/stable/deb stable-$(ARCH)/"
          tools:
            - sysstat
            - iotop
            - sysdig
      roles:
        - { role: ops_tools, tags: [ 'ops_tools' ], _ops_tools: "{{ OPS_TOOLS }}" }
```

License
-------

See LICENSE file.

Author Information
------------------

Initially created by Lukas Pustina [@drivebytesting](https://twitter.com/drivebytesting).

