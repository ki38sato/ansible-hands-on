11. role
---
- role 機能単位でまとめる

```
$ cd sample_role
$ cat site.yml

- hosts: kibana4
  sudo: yes
  vars:
    - jdk_version: 1.8.0
    - es_repo_version: 1.6
    - es_version: 1.6.0-1
    - kibana_version: 4.1.0
  roles:
    - jdk
    - elasticsearch
    - kibana
```

```
$ tree
.
├── ansible.cfg
├── group_vars
│   └── all
├── hosts
├── roles
│   ├── elasticsearch
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   │   └── logging.yml
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── templates
│   │       ├── elasticsearch.repo.j2
│   │       └── elasticsearch.yml.j2
│   ├── jdk
│   │   ├── defaults
│   │   │   └── main.yml
│   │   └── tasks
│   │       └── main.yml
│   └── kibana
│       ├── files
│       │   └── kibana_init.sh
│       └── tasks
│           └── main.yml
└── site.yml
```

- roleの構成要素
  - defaults/main.yml => 変数のデフォルト値を記述する
  - handlers/main.yml => handlers定義を記述する
  - tasks/main.yml => tasks定義を記述する
  - vars/main.yml => 変数定義を記述する
  - meta/main.yml => dependencyを記述する
  - files/ => copy module用のファイルリソースを格納
  - templates/ => templates module用のファイルリソースを格納


- [best practice directory layout](https://docs.ansible.com/playbooks_best_practices.html)


---
[< 10. loop](10_loop.md) || [12. group_vars / host_vars >](12_group_vars.md)
