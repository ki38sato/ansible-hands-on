9. template
---
- template リソースファイルの変数化
  - copy moduleの変数テンプレート版

```
- hosts: all
  sudo: yes
  vars:
    - nginx_listen_port: 8090
  tasks:
~中略~

    - name: copy nginx.conf
      template:
        src=nginx.conf.j2
        dest=/etc/nginx/nginx.conf
        owner=root
        group=root
        mode=0644

$ cat nginx.conf.j2

~中略~

    server {
        listen       {{ nginx_listen_port }};
        server_name  localhost;
```

- 変数を使用する以外はcopy moduleと全く一緒

---
[< 8. vars](8_vars.md) || [10. loop >](10_loop.md)
