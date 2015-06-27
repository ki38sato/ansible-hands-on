5. module
---
- [module一覧](http://docs.ansible.com/modules_by_category.html)
- よく使うmodule紹介
- file
  - ファイル・ディレクトリ・リンクの作成・削除
  - ファイル作成はお勧めしない

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
- name: copy ssh directory
  copy:
    src=.ssh/
    dest=/home/vagrant/.ssh/
    owner=vagrant
    group=vagrant
    mode=0600
```

- yum
  - パッケージ管理
  - apt / gem / pip / [etc..](http://docs.ansible.com/list_of_packaging_modules.html)

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

- get_url

```
- name: Download kibana4
  get_url: url="https://download.elastic.co/kibana/kibana/kibana-4.1.0-linux-x64.tar.gz" dest=/var/tmp/
```

- unarchive

```
- name: expand kibana4
  unarchive: src=/var/tmp/kibana-4.1.0-linux-x64.tar.gz dest=/var/tmp/ owner=root group=root copy=no
```

---
[< 3. execution](3_execution.md) || [trial-1 >](trial-1.md)
