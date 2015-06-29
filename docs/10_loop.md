10. loop
---
- loop 繰り返し処理

```
- name: yum install depenencies
  yum: name={{ item }}
  sudo: yes
  with_items:
    - gcc
    - gcc-c++
    - make
    - git
    - patch
    - openssl-devel
    - zlib-devel
    - readline-devel
    - sqlite-devel
    - bzip2-devel
    - blas-devel
    - lapack-devel
    - jq
```

- with_items => リスト定義した内容をループ
- item変数でリストから1個ずつ受ける

- 階層構造ももてる

```
- name: create group
  group: name={{ item.name }} gid={{ item.gid }}
  with_items:
    - { name: 'devs',  gid: '10000' }
    - { name: 'admin', gid: '20000' }
```


- (要注意) include に対してループすることはできない

```
- include: "{{ item }}.yml"
  with_items:
    - config1
    - config2

$ ansible-playbook site.yml -i hosts
ERROR: [DEPRECATED]: include + with_items is a removed deprecated feature.  Please update your playbooks.
```
---
[< 9. template](9_template.md) || [trial-2 >](trial-2.md)
