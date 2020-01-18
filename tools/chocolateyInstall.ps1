$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.25.1/docker-compose-Windows-x86_64.exe'
$checksum = 'a65a06545b2bc5c8ebb1f4c2b3531c7d792e2798a3d62ffdfc87f19a37c8d435'
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
