
# Ansible入門 (プチハンズオン)


1. setup / 環境について
---
- Vagrant + VirtualBox は導入済みの前提です。
	- 最新バージョンを推奨します。
	- 自力でVagrant環境を解決できる方はVirtualBox以外(VMPlayerとか)でも構いません。
- 都合上、OSにはCentOS6.5を使用します。
	- chef/centos-6.5 box
- 環境構築用のVagrantfile
	- https://github.com/ki38sato/
	- git clone もしくは ZIP Downloadして展開
	- ansible-hands-on ディレクトリ内から vagrant up
	- 動作確認
		- ssh 192.168.200.10 (user: vagrant, pass: vagrant)
		- ansible --version => ansible 1.9.1 と表示される
- 構成
	- default (Vagrant_handson)
		- ansible-handson-srv: 192.168.200.10
		- ansible-handson-guest1: 192.168.200.20
		- ansible-handson-guest2: 192.168.200.30
	- Vagrant_local
		- ansible-local-dev: 192.168.200.40
