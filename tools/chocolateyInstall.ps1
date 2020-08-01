$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.26.2/docker-compose-Windows-x86_64.exe'
$checksum = 'e350f60f041e951bf0101622decd85a2b66584b6d32f8a6c1e12c001c2f7e541'
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
