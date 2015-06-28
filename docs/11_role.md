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


- role 構造

```
$ tree roles/sample
roles
defaults
files
handlers
tasks
templates
vars
```

- roleの構成要素
  - defaults/ => 変数のデフォルト値を格納する
  - handlers/ => handlers定義を格納する
  - tasks/ => tasks定義を格納する
  - vars/ => 変数定義を格納する
  - files/ => copy module用のファイルリソースを格納
  - templates/ => templates module用のファイルリソースを格納
- defaults / handlers / tasks / vars => 最初にmain.ymlが呼ばれる
- tasks/main.yml 以外はOptional

---
[< 10. loop](10_loop.md) || [local development environment >](local-dev.md)
