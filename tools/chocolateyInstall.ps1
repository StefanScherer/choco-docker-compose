$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.27.2/docker-compose-Windows-x86_64.exe'
$checksum = '98c2152424b1bdd1448a1c6a538103a044663895f77363d312c4cf8099bd3b28'
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
