$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.25.5/docker-compose-Windows-x86_64.exe'
$checksum = '0889c411f88e631c7dff0f0bc18fae3040ed8b6a951f316637e91c5293a5085c'
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
