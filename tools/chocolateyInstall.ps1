$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/v1.25.2/docker-compose-Windows-x86_64.exe'
$checksum = 'd48da6103d164d13604105a3057f59869fd454f40907068ec7848772f6c1930c'
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
