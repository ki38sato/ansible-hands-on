setup
---
- Vagrant + VirtualBox は導入済みの前提です。
	- 最新バージョンを推奨します。
		- VirtualBox 5.xではまだ検証していません (2015.09.06)
	- 自力でVagrant環境を解決できる方はVirtualBox以外(VMPlayerとか)でも構いません。
- 都合上、OSにはCentOSを使用します。
	- bento/centos-6.7 box (2015.08.31 changed. chef/centos-6.5 is deprecated.)
- 環境構築用のVagrantfile
	- https://github.com/ki38sato/ansible-hands-on (当レポジトリ)
	- git clone もしくは ZIP Downloadして展開
	- ansible-hands-on/handson ディレクトリ内から vagrant up
	- 動作確認
		- ssh 192.168.200.10 (user: vagrant, pass: vagrant)
		- ansible --version => ansible 1.9.2 と表示される (2015.09.06)
- 構成
	- handson/
		- ansible-handson-srv: 192.168.200.10
		- ansible-handson-guest1: 192.168.200.20
		- ansible-handson-guest2: 192.168.200.30
	- localdev/
		- ansible-local-dev: 192.168.200.40

---
[< INDEX](../Readme.md) || [1. inventory >](1_inventory.md)
