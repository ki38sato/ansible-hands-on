Usefull local development environment
---

- 開発を補助する環境をローカルにVagrantで構築しよう
- ローカルで開発するのに必要な環境
  - ex) Web app用のMySQL
  - ex) 検索app用のElasticsearch
  - ex) 自appから呼び出す他appのモック
- 用意しておくといざという時に便利
  - ex) ログ解析のためのembulk+Kibana4
  - ex) 性能試験用のJmeter, locust
- 作った環境をVagrantfileの形で共有する


- rolesの中はほぼそのまま持っていける

```
$ tree
.
├── ansible
│   ├── roles
│   │   ├── elasticsearch
│   │   ├── jdk
│   │   └── kibana
│   └── site.yml
├── ansible_local.sh
└── Vagrantfile
```

- site.yml は最初の2行だけ変更

```
- hosts: localhost
  connection: local
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

- localに対してAnsibleを実行する

```
$ cat ansible_local.sh

~中略~

ansible-playbook /vagrant/ansible/site.yml -c local
```


- Vagrantfile
  - shell provisionでansible installしてゲストVM内でレシピ実行
  - 'localhost'で接続したい場合はforwarded_port設定

```
config.vm.define "#{HOSTNAME1}" do |guest|
  guest.vm.provision "shell", path: "ansible_local.sh"
  guest.vm.network :private_network, ip: IP1
  guest.vm.network :forwarded_port, guest: 5601, host: 5601
```

- cd ansible-hands-on/localdev/
- ブラウザで'localhost:5601'

---
[< 12. group_vars](12_group_vars.md) || [>>](../Readme.md)
