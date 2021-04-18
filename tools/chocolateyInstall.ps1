$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.29.1/docker-compose-Windows-x86_64.exe'
$checksum = '23af7f305f2ee479e080baebe8065506e73b7a0b8c0479fd03e82c0ff6570e9d'
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
