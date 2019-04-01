$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.24.0/docker-compose-Windows-x86_64.exe'
$checksum = 'bc6d0b49f534e1bd9325c0a8f729d125849ce69cf9e3231cd4f5c842d5e08c29'
$checksumType = 'sha256'

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile `
  -PackageName    $packageName `
  -FileFullPath   $file `
  -Url64bit       $url `
  -Checksum64     $checksum `
  -ChecksumType64 $checksumType
