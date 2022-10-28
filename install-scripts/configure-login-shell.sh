cp /home/vagrant/.config/powershell/Microsoft.PowerShell_profile.ps1  /home/vagrant/.config/powershell/profile.ps1;
echo '# Shows navigable menu of all options when hitting Tab' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete' >> /home/vagrant/.config/powershell/profile.ps1;
echo '# Autocompletion for arrow keys' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward' >> /home/vagrant/.config/powershell/profile.ps1;
echo 'Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward' >> /home/vagrant/.config/powershell/profile.ps1;
# according do microsft profile.ps1 takes precedence over Microsoft.PowerShell_profile.ps1, I'm likely to forget that so appending .bak makes the change visual
mv /home/vagrant/.config/powershell/Microsoft.PowerShell_profile.ps1 /home/vagrant/.config/powershell/Microsoft.PowerShell_profile.ps1.bak;
sudo chsh -s vagrant /usr/bin/pwsh;