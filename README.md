ops_tools
=========
[![Build Status](https://travis-ci.org/Rheinwerk/ansible-role-ops_tools.svg?branch=master)](https://travis-ci.org/Rheinwerk/ansible-role-ops_tools)

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
          deb822_repository:
            - name: elastic
              types: deb
              uris: https://artifacts.elastic.co/packages/8.x/apt
              suites: stable
              components: main
              signed_by: https://artifacts.elastic.co/GPG-KEY-elasticsearch
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

