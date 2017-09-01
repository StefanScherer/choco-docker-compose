$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.16.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'fbdcb99d6d69819ed13b917b31aaec06b50156a3835bbbb53903e8af04c9a79c'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
