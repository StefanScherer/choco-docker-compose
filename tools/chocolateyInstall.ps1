$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.25.4/docker-compose-Windows-x86_64.exe'
$checksum = '941705af6c3676ef17f1fa6726019c09efa0ad785174afda439eed8b794c36db'
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
