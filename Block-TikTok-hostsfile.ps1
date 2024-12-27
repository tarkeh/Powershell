# Define the path to the hosts file 
$file = "C:\Windows\System32\drivers\etc\hosts" 

# Read the current content of the hosts file 
$hostfile = Get-Content -Path $file 

# Add your new line (replace "192.168.1.100" and "example.com" with your desired IP address and hostname) 
$newLine = "0.0.0.0 tiktok.com" 
$hostfile += $newLine 

# Save the updated content back to the hosts file 
Set-Content -Path $file -Value $hostfile -Force