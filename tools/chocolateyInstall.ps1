$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.27.0/docker-compose-Windows-x86_64.exe'
$checksum = '08cf0737a2e22d5b2eb791233d23de26d9f3408e570974bd4493a02fa38eba41'
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
