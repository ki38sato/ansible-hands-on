6. handlers
---
- handlers

```
$ cd ../skelton2
$ cat site.yml

- hosts: all
  sudo: yes
  tasks:

  ~中略~

    - name: Install nginx
      yum: name=nginx state=latest

    - name: copy nginx.conf
      copy: src=nginx.conf dest=/etc/nginx/nginx.conf
      notify: reload nginx

    - name: start nginx
      service: name=nginx state=started

  handlers:
    - name: reload nginx
      service: name=nginx state=reloaded
```

- notify => 変更があったらhandlersを呼ぶ
- handlers => 呼ばれる定義を宣言。名前大事
- handlersは最後にまとめて実行される
  - 同じnotifyが複数あっても実行は1回だけ

---
[< 5. idempotency](5_idempotency.md) || [7. vars >](7_vars.md)
