trial-2
---

- /vagrant/trial-2/site.yml
- 以下のように書き換えてください
  - includeを使って jdk, elasticsearch, kibana を分けましょう
    - jdk.yml
    - elasticsearch.yml
    - kibana.yml
  - jdkのversionをvarsで指定しよう
    - jdk_version
  - elasticsearch.repoのversionをvarsで指定しよう
    - es_repo_version
    - templateにする

---
[< 10. loop](10_loop.md) || [11. role >](11_role.md)
