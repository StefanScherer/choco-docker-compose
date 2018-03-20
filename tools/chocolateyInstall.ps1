$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.20.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '587b41a75271ed37dd27b482a379844a296f92bde856cfad9068c17864c37393'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
