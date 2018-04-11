$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.21.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'f0d52f0323727a9a6a68fa2739bf3c033e64a2d18437d7b31766d7e2e034131e'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
