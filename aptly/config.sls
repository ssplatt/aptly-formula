# vim: ft=sls
{% from "aptly/map.jinja" import aptly with context %}

aptly_config:
  file.serialize:
    - name: /etc/aptly.conf
    - formatter: JSON
    - dataset: {{ aptly.config }}
