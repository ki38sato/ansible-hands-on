7. include
---
- include 別のファイルを読む

```
$ cat site.yml

- hosts: all
  sudo: yes
  tasks:

  ~中略~

    - name: Install nginx
      yum: name=nginx state=latest

    - include: configure.yml

    - name: start nginx
      service: name=nginx state=started

  handlers:
    - name: restart nginx
      service: name=nginx state=restarted

$ cat configure.yml

- name: copy nginx.conf
  copy: src=nginx.conf dest=/etc/nginx/nginx.conf
  notify: restart nginx
```

- yamlの構造に気をつける
  - 上のケースでは、includeされる側にはtasks: は不要

---
[< 6. handlers](6_handlers.md) || [8. vars >](8_vars.md)
