4. module
---
- [module一覧](http://docs.ansible.com/modules_by_category.html)
- よく使うmodule紹介
- file
  - ファイル(touch)・ディレクトリ・リンクの作成・削除、属性変更

```
- name: mkdir /path/to/dir
  file: path=/path/to/dir state=directory owner=vagrant group=vagrant mode=0644 recursive=yes

- name: rm /path/to/file
  file: path=/path/to/file state=absent

- name: create link to dir
  file: src=/path/to/dir/ dest=/path/to/link state=link
```

- copy
  - ローカルからリモートにファイルやディレクトリをコピー

```
- name: copy nginx.conf
  copy:
    src=nginx.conf
    dest=/etc/nginx/nginx.conf
    owner=root
    group=root
    mode=0644
    backup=yes

- name: copy nginx/conf.d directory
  copy: src=conf.d dest=/etc/nginx
```

- yum
  - パッケージ管理
  - apt / gem / pip / [etc..](http://docs.ansible.com/list_of_packaging_modules.html)
  - state=present / latest / absent

```
- name: Add yum-repo
  yum: name=http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm state=present

- name: Install nginx
  yum: name=nginx state=latest
```

- service
  - サービス管理
  - state=started / stopped / reloaded / restarted

```
- name: start nginx
  service: name=nginx state=started enabled=yes
```


---
[< 3. execution](3_execution.md) || [trial-1 >](trial-1.md)
