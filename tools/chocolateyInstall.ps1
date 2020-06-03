$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.26.0/docker-compose-Windows-x86_64.exe'
$checksum = '4a1963d06467ad1c51dd5f53f4b3517f3440cfbb4502e853d3602896f247eaa4'
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
