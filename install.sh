#!/bin/bash

echo "Maker Change permissions"
chmod 777 Maker
echo "mv -i Maker ~/.local/Maker"
mv -i Maker ~/.local/Maker

if [ -e  ~/.zshrc ]; then
	echo "user used zsh => zshrc Register"
	is_alias_maker=$(cat ~/.zshrc | grep alias | grep '.local/Maker' | wc -l)
	if [ ${is_alias_maker} == "0" ]; then
		echo alias maker=~/.local/Maker >> ~/.zshrc
	fi
fi
if [ -e  ~/.bashrc ]; then
	echo "user used bash => bashrc Register"
	is_alias_maker=$(cat ~/.bashrc | grep alias | grep '.local/Maker' | wc -l)
	if [ ${is_alias_maker} == "0" ]; then
		echo alias maker=~/.local/Maker >> ~/.bashrc
	fi
fi

if [ -e ~/.config/fish ]; then
	echo "user used fish => fishrc Register"
	echo \
	"function maker --wraps='~/.local/Maker' --description 'alias maker=~/.local/Maker'
	~/.local/Maker $argv; 
	end" > ~/.config/fish/functions/maker.fish
fi
echo "done"