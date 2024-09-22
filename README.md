# dotfiles
my dotfiles that are a fork of Livakivi's dotfiles
[here are livakivi's dotfiles](https://github.com/Livakivi/config-files/)  

# how 2 install

i use arch btw  
command to install most apps:  
```yay alacritty dunst fastfetch i3 lf neofetch neovim picom polybar rofi git fzf bat xsel rofi-greenclip kdeconnectd playerctl ksnip nitrogen cbonsai fortune cowsay lolcat sl exa```  
  
i also use `zsh` with `oh-my-zsh` and `powerlevel10k`   
so to install them do: ```yay -S zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```  
after you do this you need to change `ZSH_THEME` to "powerlevel10k/powerlevel10k" in your `zshrc` file.
> disclamer: `powerlevel10k` is in 'life support' mode (very limited support) so i might change it  

also if you can add my aliasses using this command: `echo source ~/.aliasses.zsh >> ~/.zshrc` if you saved my `.aliasses.zsh` file in a directory other than `~/`, then make sure to change the `~/.aliasses.zsh` to your `.aliasses.zsh` file path.  

you also need to install `0xProto Nerd Font` and `ComicShannsMono Nerd Font`. you can do that from the nerdfonts website: https://www.nerdfonts.com/font-downloads  
