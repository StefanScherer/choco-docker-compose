$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.16.1/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '5d158937e03717fdd9df103bb1047391d7565160e127ccd2a72d3ee4c4e11483'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
