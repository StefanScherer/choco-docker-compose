$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/v2.17.2/docker-compose-windows-x86_64.exe'
$checksum = '0869CFE9D799D511E4EAF87029ED08EA256E7000F312023C062D7DDCADC385DB'
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
