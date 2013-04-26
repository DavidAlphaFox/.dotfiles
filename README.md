常用的Vim和Emacs的配置文件	
同时包含了quicklisp和tmux的配置	
tmux的配置主要解决了远程ssh时配色出现不正常的现象	

##使用方法

1.Clone这个项目
	
	cd ~
	git clone https://github.com/DavidAlphaFox/.dotfiles.git	
	cd ~/.dotfiles  

2.删除.dotfiles/.vim/bundle下面的所有文件	

	cd ~/.dotfiles/.vim/bundle	
	rm -rf *

3.Clone vundle插件
	
	cd ~/.dotfiles/.vim/bundle
	git clone clone https://github.com/gmarik/vundle.git	
	
4.执行安装脚本
	
	cd ~/.dotfiles
	./configure	
	
5.安装bundles，启动vim并忽略所有错误
	
	:BundleInstall	
	
