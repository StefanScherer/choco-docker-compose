$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Windows-x86_64.exe'
$checksum = '94c3c634e21532eb9783057eac5235ca44b3e14a4c34e73d7eb6b94a2544cc12'
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
