$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.25.3/docker-compose-Windows-x86_64.exe'
$checksum = 'ee62d3451c88525b6b6c6c0eb58d0ca08d990b30087907c48dd58de9cd91b9ee'
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
