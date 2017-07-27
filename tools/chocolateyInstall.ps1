$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.15.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '34b77425fa62bfad43b215a8d3c2091417a3bf9cdc03bcdb0ca65d3549f77025'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
