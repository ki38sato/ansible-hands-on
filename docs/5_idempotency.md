5. idempotency
---
- idempotency 冪等性
  - 何度やっても同じ結果になること


- ansibleはmoduleレベルで冪等性をサポートしている
  - 差分があると変更を適用する => changed
  - 差分がないと何も実行しない => ok


- 対応module
  - file
  - copy
  - yum
  - service
- 非対応module
  - command
  - shell


- 冪等対応コマンドゆえの問題
  - nginx.confを変更して実行 => changed
  - 一方、service nginx部分は既に1回目にstartedなので変更なし => ok
    - nginx.confの変更内容が適用されない
  - tasksにreloded/restartedを書くとnginx.confの変更が適用される
    - nginx.confに変更が無くても再起動されてしまう
  - changed/okを判定して処理する何かが必要 => handlers

---
[< trial-1](trial-1.md) || [6. handlers >](6_handlers.md)
