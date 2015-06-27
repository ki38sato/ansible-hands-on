11. template
---
- template リソースファイルの変数化

```
- name: copy nginx.conf
  template:
    src=nginx.conf.j2
    dest=/etc/nginx/nginx.conf
    owner=root
    group=root
    mode=0644

$ cat nginx.conf.js

~中略~

listen {{ nginx_listen_port }}

```
↑変数化の例として余りよくない気がする　ESにする?
サンプルを全体的にESに寄せるかどうか・・・
このあと、話変わるのでtrialはさむ？？

- copy moduleの変数導入版


---
[< 8. vars](8_vars.md) || [10. loop >](10_loop.md)
