Prerequisites
------------

Before installation of this zshell config you need to install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).


Installation
------------

  Download:

  ```zsh
    git clone https://github.com/kajamite/zsh.git ~/.zsh
  ```

  Copy zsh config to home:

  ```zsh
    ln -s ~/.zsh/zshrc ~/.zshrc   
  ```
  
  vim into .zshrc and change first line(export ZSH=) with your actual path to .oh-my-zsh folder
  ```zsh
    vim ~/.zshrc
  ```  

  Install theme I use
  ```zsh
    cp ~/.zsh/themes/* ~/.oh-my-zsh/themes                        
  ```

  Restart shell.
