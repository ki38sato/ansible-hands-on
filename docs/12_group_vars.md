13. role
---
- role 機能単位でまとめる

kibana setupレシピでをskeltonで仕込んで。。。


```
$ cat site_app.yml

- hosts: app
  sudo: yes
  vars:
    - jdk_filename: jdk-8u45-linux-x64.rpm
    - jdk_download_url: http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm
  roles:
    - adduser
    - jdk
    - app
    - nginx
    - mackerel_agent

$ tree roles

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
[< 7. idempotency](7_idempotency.md) || [9. vars >]()
