trial-1
---

- グループwebにnginxをインストールするレシピを書く
- cd /vagrant/trial-1
- site.ymlを編集する (vi site.yml)
- 想定内容は以下

```
- nginxのrepositoryを登録する
- nginxの最新をインストールする
- nginxをservice start
```

- ansible-playbook を流し終えたらブラウザから192.168.200.20にアクセス
  - 「Welcom to nginx!」


- できた人は更に以下を service start の前に追加

```
- (/vagrant/trial-1 配下の) nginx.conf を /etc/nginx にコピー
- (/vagrant/trial-1 配下の) trial.html を /usr/share/nginx/html にコピー
```

- 再度、ansible-playbook 実行
- ブラウザから192.168.200.20:8080にアクセス
  - 接続できない！！ => 何故かは次章

---
[< 4. module](4_module.md) || [5. idempotency >](5_idempotency.md)
