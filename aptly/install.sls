# vim: ft=sls
{% from "aptly/map.jinja" import aptly with context %}

aptly_pkg:
  pkg.installed:
    - name: {{ aptly.pkg }}

