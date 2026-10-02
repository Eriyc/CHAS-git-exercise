$Katalog = "C:\Systementor\KonsultData"
$LinuxIP = "192.168.1.50"

# Skapa mappen
New-Item -ItemType Directory -Path $Katalog -Force | Out-Null

# Visa behörigheterna (ACL)
Get-Acl -Path $Katalog | Format-List
(Get-Acl -Path $Katalog).Access |
    Format-Table IdentityReference, FileSystemRights, AccessControlType, IsInherited -AutoSize

# Testa nätverket och visa nätverksinställningarna
Test-Connection -ComputerName $LinuxIP -Count 4
ipconfig /all
