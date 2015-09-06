1. inventory
---
- inventory 実行対象ホストを定義する

```
$ cd /vagrant/skelton1
$ cat hosts

[web]
guest1

[db]
guest2
```

- ファイル名は慣習的にhosts
	- 指定しないと/etc/ansible/hostsが使われるので注意
- [　]で囲んでグループ名を付ける
- グループに属するホスト名(IP/FQDN)を列挙する

- :childrenを付与して入れ子に出来る

```
[web]
guest1

[db]
192.168.200.30

[server:childeren]
web
db
```

- inventoryファイル内に記載された全てのホストを含む**all**という予約語がある

---
[< setup](setup.md) || [2. playbook >](2_playbook.md)
