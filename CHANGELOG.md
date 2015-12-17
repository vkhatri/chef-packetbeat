packetbeat CHANGELOG
====================

This file is used to list changes made in each version of the packetbeat cookbook.

0.2.2
-----

- Virender Khatri - #23, add yum_repository resource attribute metadata_expiry

- Virender Khatri - #22, update to beats v1.0.1

- Virender Khatri - #20, add output configuration example

0.2.1
-----

- Virender Khatri - #18, major changes to support repository package install

- Virender Khatri - #19, fix kitchen test

0.2.0
-----

- Virender Khatri - #9, disable default['packetbeat']['config']['output']['elasticsearch']['hosts']

- Virender Khatri - #10, ignore service restart on config change on disable_service

- Virender Khatri - #11, remove dumy file packetbeat.yml

- Jose Alberto - bump Packetbeat verion to 1.0.0 rc2

- Jose Alberto - adapt attributes to new breaking changes

- Jose Alberto - change defaults no more outputs by default

- Virender Khatri - #14, update package_url to auto

- Virender Khatri - #15, ubuntu packetbeat.yml package file conflict issue during upgrade

- Virender Khatri -#16, added spec

- Virender Khatri - #17, added 32bit platform support

0.1.8
-----

- Virender Khatri - #8, optional attribute to stop and disable the service

- Virender Khatri - #7, update version to beta3

- Virender Khatri - #6, update default attriutes for new protocol support in beta3 release

0.1.5
-----

- Virender Khatri - issue #5, bump packetbeat version to 1.0.0-beta2

- Virender Khatri - issue #4, separate attributes file for config

- Virender Khatri - issue #3, notify packetbeat service on config change

- Virender Khatri - issue #2, default[packetbeat][notify_restart] default value must be true

- Virender Khatri - issue #1, save_topology default value set to true

- Virender Khatri - added more default config parameters info to config attribute file

- Virender Khatri - fixed typo and updated README

0.1.0
-----

- Virender Khatri - Initial release of packetbeat

- - -
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
