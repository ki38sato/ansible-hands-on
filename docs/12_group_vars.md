12. group_vars / host_vars
---
- group_vars グループに対応した変数定義
- host_vars ホストに対応した変数定義


- inventoryで指定

```
[web]
guest1   nginx_app_port=8888
guest2   nginx_app_port=8889

[web:vars]
nginx_listen_port=8000
nginx_worker_process=2

```

- ホストは同じ行の後ろに変数定義を記述
- グループは[グループ:vars] を定義して、そこに記述



- group_vars / host_vars ディレクトリに配置

```
$ tree
.
├── ansible.cfg
├── group_vars
│   ├── web
│   └── db
├── host_vars
│   ├── guest1
│   └── guest2
├── hosts
├── roles
└── site.yml
```

- グループ、ホストと同じ名前のファイルを置いて変数を書いておくと読み込まれる



---
[< 11. role](11_role.md) || [local development environment >](local-dev.md)
