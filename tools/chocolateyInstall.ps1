$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.20.1/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'ac40acdfa6283aabc1ca4b57ce8d0241fbe1f71409714ce0f357d1ea7624496d'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
