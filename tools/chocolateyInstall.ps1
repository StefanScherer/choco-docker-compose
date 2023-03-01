$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-windows-x86_64.exe'
$checksum = '538598025dc9ae41298abf859d5b312fba40359c691d9b14527375f4633cbe65'
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
