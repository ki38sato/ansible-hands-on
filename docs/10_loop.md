12. loop
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
    - { name: 'dev',  gid: '10000' }
    - { name: 'admin', gid: '20000' }
```


- include に対してループすることはできない

---
[< 9. template](9_template.md) || [11. role >](11_role.md)
