$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.23.2/docker-compose-Windows-x86_64.exe'
$checksum = '0d3fc3acd98a0b906eda5c235267f53ad994cc21d7ab6e3af83fb3762c70350f'
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
