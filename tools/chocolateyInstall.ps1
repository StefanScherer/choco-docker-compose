$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.17.1/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '86a9e5193628e93ab73fd0b7438e954f25ae68da45ab3b6ab10dda3f307bb21c'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
