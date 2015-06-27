10. vars
---
- vars 変数化

```
- hosts: all
  sudo: yes
  vars:
    - nginx_version: xxxxxx
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

- nginx_version: xxxxxx
```

- vars_prompt 変数をプロンプトから入力したい

```

```

- --extra-vars 実行時に変数を渡したい

```

```
-
- ファイルも渡せる --extra-vars "@extra-vars.yml"


- vars/vars_file/vars_prompt/extra-vars




---
[< 7. include](7_include.md) || [9. template >](9_template.md)
