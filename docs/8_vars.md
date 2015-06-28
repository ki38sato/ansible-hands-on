8. vars
---
- vars 変数化

```
- hosts: all
  sudo: yes
  vars:
    - nginx_version: 1.8.0-1.el6.ngx
  tasks:

    ~中略~

    - name: Install nginx
      yum: name=nginx-{{ nginx_version }} state=present
```

- vars: => 変数を宣言する
- 変数を適用する場所に {{ }} で囲って変数を配置
  - jinja2 template format


- vars_file 変数を格納したファイルを読み込む

```
- hosts: all
  sudo: yes
  vars_file:
    - vars.yml
  tasks:

    ~中略~

    - name: Install nginx
      yum: name=nginx-{{ nginx_version }} state=present

$ cat vars.yml
- nginx_version: 1.8.0-1.el6.ngx
```


- vars_prompt 変数のプロンプト入力

```
- hosts: all
  sudo: yes
  vars_prompt:
    - name: "create_user_name"
      prompt: "Please enter user name"
      private: no
  tasks:
    - name: create user
      user: name={{ create_user_name }} group=devs shell=/bin/bash

$ ansible-playbook site.yml -i hosts
Please enter user name:
```

- playbook実行最初にプロンプト表示して待機
- private: yes => マスク


- --extra-vars 実行時に変数を渡す

```
- hosts: all
  sudo: yes
  tasks:
    - name: create user
      user: name={{ create_user_name }} group=devs shell=/bin/bash

$ ansible-playbook site.yml -i hosts --extra-vars '{"create_user_name":"dev-user"}'
```

- ファイルも渡せる --extra-vars "@extra-vars.yml"


- もっと強力なgroup_vars / host_vars (後述)

---
[< 7. include](7_include.md) || [9. template >](9_template.md)
