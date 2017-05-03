$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.13.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'b933e653cd77f1d990d4dda598f1cc8fe8f128d66485569e828c0976602a8d5e'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
