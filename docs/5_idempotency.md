7. idempotency
---
- idempotency 冪等性
  - 何度やっても同じ結果になること

- 1回目はchanged, 2回目はOKとなるのを説明する
- 対応するコマンドと、してないコマンド
  - 対応
    - copy
    - yum
    - service
  - 非対応
    - command
    - shell
    - get_url

- 対応してないコマンドを工夫する

```

```

- 冪等対応コマンドゆえの問題
  - nginx.confを変更しても既にstarted
  - tasksにreloded/restartedを書くと変更が無くても再起動
  - serviceにはhandlersを併せて使う

---
[< trial-1](trial-1.md) || [6. handlers >](6_handlers.md)
