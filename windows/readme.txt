Follow readme in root.

In your 
> notepad $profile

add 
. "C:\Users\Piotr\ownCloud\clientsync\Powershell\Profile\Microsoft.PowerShell_profile.ps1"

And as admin
Set-ExecutionPolicy RemoteSigned

# install chocolatey
# as administrator cmd.exe
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

Get your box ready. Refer to choco installation in readme above.
#choco install -y google-chrome-x64 notepadplusplus.install git.install 7zip.install vlc ccleaner gimp sysinternals skype winscp.install pscx thunderbird slack
#choco install visualstudio2015community