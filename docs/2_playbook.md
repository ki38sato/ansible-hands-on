2. playbook
---
- playbook 実行する内容を記述する

```
$ cat site.yml

- hosts: all
  sudo: yes
  tasks:
    - name: execute hostname
      command: hostname
```

- 慣習的にsite.ymlとかsite_***.ymlとか付けることが多い
  - [ansible/ansible-examples](https://github.com/ansible/ansible-examples)
- hosts: => 対象とするグループ名を指定する
- option
  - sudo: yes => コマンド実行時にrootで実行する
  - sudo_user: => root以外で実行したい場合
  - remote_user: => sshするユーザを指定したい場合
  - gather_facts: no => ホストの情報を取得しない
- tasks:
  - 実行するコマンドを記載する
  - command / shell => Linuxローカルでコマンド実行するのと同等
    - shell はリダイレクトやパイプが使える
    - name は無くても動く。他から呼ぶのに使うことがある

---
[< 1. inventory](1_inventory.md) || [3. execution >](3_execution.md)
