# vim: ft=sls
{% from "aptly/map.jinja" import aptly with context %}
{# Below is an example of having a toggle for the state #}

{% if aptly.enabled %}
include:
  - aptly.install
  - aptly.config
{% else %}
'aptly-formula disabled':
  test.succeed_without_changes
{% endif %}
