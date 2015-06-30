tags
---

- tags タグを付けて実行時制御

```
- hosts: web
  sudo: yes
  vars:
    - jdk_version: 1.8.0
    - es_repo_version: 1.6
    - es_version: 1.6.0-1
    - kibana_version: 4.1.0
  roles:
    - { role: jdk, tags: jdk }
    - { role: elasticsearch, tags: elasticsearch }
    - { role: kibana, tags: kibana }
```

- tags: で名前を付ける


- 指定したタグだけ実行

```
$ ansible-playbook site.yml -i hosts -t jdk,elasticsearch
```


- 指定したタグをスキップして実行

```
$ ansible-playbook site.yml -i hosts --skip-tags kibana
```




---
[< local development environment](local-dev.md) || [14. serial >](14_serial.md)
