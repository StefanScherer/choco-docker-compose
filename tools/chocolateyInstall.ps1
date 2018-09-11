$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.22.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'a828b92e52d49427790b8ede88072f3d21315dca8123d789a5ceb0e01dc9890f'
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
