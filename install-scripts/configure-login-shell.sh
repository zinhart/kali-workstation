touch /home/vagrant/.config/powershell/profile.ps1;
echo 'Import-Module PSReadline' >> /home/vagrant/.config/powershell/profile.ps1;
pwsh -command 'Import-Module PowerShellGet; Install-Module Get-ChildItemColor -Force;';
echo '# Shows navigable menu of all options when hitting Tab' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete' >> /home/vagrant/.config/powershell/profile.ps1;
echo '# Autocompletion for arrow keys' >> >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-Alias l Get-ChildItem -option AllScope' >> /home/vagrant/.config/powershell/profile.ps1;
# to do copy Sampleprofile in psreadline and of course study its capabilities
pwsh -C 'Register-PackageSource -Name nuget.org -ProviderName NuGet -Location "https://api.nuget.org/v3/index.json" -Trusted'
pwsh -c 'Install-Module -Name Posh-SSH -force'
pwsh -c 'Install-Module -Name PwshWebSocketClient -force'
# to do install PoshRSJob
sudo chsh -s  vagrant /usr/bin/pwsh;
