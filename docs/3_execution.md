4. execution
---
- execute ansible-playbook

```
$ ansible-playbook site.yml -i hosts

PLAY [all] ********************************************************************

GATHERING FACTS ***************************************************************
ok: [guest1]
ok: [guest2]

TASK: [display hostname] ******************************************************
changed: [guest1]
changed: [guest2]

PLAY RECAP ********************************************************************
guest1                     : ok=2    changed=1    unreachable=0    failed=0
guest2                     : ok=2    changed=1    unreachable=0    failed=0
```

- ansible-playbook [playbook] -i [inventory]
- commandline options
  - 詳細表示
    - -v => 結果詳細
    - -vv => ＋実行内容
    - -vvv => ＋ansibleが内部で実行しているコマンド
  - -i => inventoryファイルパスを指定 (指定しないと/etc/ansible/hostsを読もうとする)
  - -l => 実行対象をホストやグループを指定して更に絞り込める　



- playbookを使わない手段

```
$ ansible all -i hosts -m shell -a "hostname"
guest1 | success | rc=0 >>
ansible-handson-guest1

guest2 | success | rc=0 >>
ansible-handson-guest2
```

- ansible [group/host] -i [inventory] -m shell -a "hostname"
    - -m => module指定
    - -a => moduleに渡す実行内容
- inventoryが既に用意されている状況では非常に協力 (メンテに便利)

---
[< 2. playbook](2_playbook.md) || [4. module >](4_module.md)
