$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.21.2/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '6f515b821fcbb3e07fdab8ce6da74b9e77ab743ae141d4670280fd26f95af7ef'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
