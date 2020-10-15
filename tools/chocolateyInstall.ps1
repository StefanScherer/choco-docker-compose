$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.27.4/docker-compose-Windows-x86_64.exe'
$checksum = 'ad808a91fbf782bc8a306017df450c36e77edcbea139ef0d036642568622a326'
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
