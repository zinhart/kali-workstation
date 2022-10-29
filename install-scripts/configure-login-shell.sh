touch /home/vagrant/.config/powershell/profile.ps1;
echo 'Import-Module PSReadline' >> /home/vagrant/.config/powershell/profile.ps1;
pwsh -command 'Import-Module PowerShellGet; Install-Module Get-ChildItemColor -Force;';
echo 'Set-Alias l Get-ChildItem -option AllScope' >> /home/vagrant/.config/powershell/profile.ps1;
sudo chsh -s vagrant /usr/bin/pwsh;
