$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/v2.17.3/docker-compose-windows-x86_64.exe'
$checksum = '556cc1d373503a897ecc2def998a40b2ad1fe27ff049769eb912c7e208772e74'
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
