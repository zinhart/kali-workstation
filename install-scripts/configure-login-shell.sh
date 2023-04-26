touch /home/vagrant/.config/powershell/profile.ps1;
echo 'Import-Module PSReadline' >> /home/vagrant/.config/powershell/profile.ps1;
pwsh -command 'Import-Module PowerShellGet; Install-Module Get-ChildItemColor -Force;';
echo '# Shows navigable menu of all options when hitting Tab' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-Alias l Get-ChildItem -option AllScope' >> /home/vagrant/.config/powershell/profile.ps1;
# to do copy Sampleprofile in psreadline and of course study its capabilities
# to do install Posh-SSH
# to do install PoshRSJob
# to do install nuget
# Register-PackageSource -Name nuget.org -ProviderName NuGet -Location "https://api.nuget.org/v3/index.json" -Trusted  
sudo chsh -s vagrant /usr/bin/pwsh;
