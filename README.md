Peter's ~/
====================

```
git clone git@github.com:psla/dotfiles.git
ln -s ~/dotfiles/.vimrc .vimrc
```

Vim
---------------------

Vim required vundle (https://github.com/gmarik/vundle)

quick install:

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
run vim
:BundleInstall
```

Some of the files were taken from doriath repository. Thanks.

Make Command-T work with ruby & macvim from brew:
```
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```

Windows
====================

Run in powershell -- run as admin

```
# add "C:\Program Files (x86)\Git\bin\" to your path if not already there
git clone git@github.com:psla/dotfiles.git
". $($(pwd).Path)\dotfiles\windows\Microsoft.PowerShell_profile.ps1" > $profile
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1

choco install vim

git clone https://github.com/gmarik/Vundle.vim.git %USERPROFILE%/.vim/bundle/Vundle.vim
# vim -> BundleInstall

choco install -y google-chrome-x64 notepadplusplus.install git.install 7zip.install vlc ccleaner gimp sysinternals skype winscp.install pscx thunderbird slack ruby
choco install visualstudio2015community

# this will not enable command-t just yet

```