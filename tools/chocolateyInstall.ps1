$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/v2.0.1/docker-compose-windows-x86_64.exe'
$checksum = '5a89d3d16e214f7686423c18db33f2b7348b4a24988633f8402c257dd3def3d3'
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
