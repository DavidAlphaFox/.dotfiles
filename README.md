常用的Vim和Emacs的配置文件		
同时包含了quicklisp和tmux的配置				
tmux的配置主要解决了远程ssh时配色出现不正常的现象	
本配置只在FreeBSD，OpenBSD及Mac OS X测试过			
##使用方法

1.Clone这个项目
	
	cd ~
	git clone https://github.com/DavidAlphaFox/.dotfiles.git	
	cd ~/.dotfiles  
	
2.执行安装脚本
	
	cd ~/.dotfiles
	./configure	
	
3.安装bundles，启动vim并忽略所有错误
	
	:BundleInstall	
	
##注意事项	
	
	请备份好自己的配置文件	
	配置脚本会自动删除掉所有的配置	
	如果出现slime不正常请自行替换	
