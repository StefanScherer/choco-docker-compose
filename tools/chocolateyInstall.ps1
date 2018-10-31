$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.23.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '1cb3eb5e3a8a90c8efa4260c7ec46322f1e25b6bec5eaa5cbb876d8c611916f3'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile `
  -PackageName    $packageName `
  -FileFullPath   $file `
  -Url            $url `
  -Url64bit       $url64 `
  -Checksum       $checksum `
  -Checksum64     $checksum64 `
  -ChecksumType   $checksumType `
  -ChecksumType64 $checksumType64
