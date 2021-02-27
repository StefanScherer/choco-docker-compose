$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.28.5/docker-compose-Windows-x86_64.exe'
$checksum = '458ff856310a38ad3365d644518f617e926d06f52f12f2b7c0bcff08c56d461e'
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
