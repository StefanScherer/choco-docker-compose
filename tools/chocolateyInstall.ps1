$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.25.0/docker-compose-Windows-x86_64.exe'
$checksum = 'a5dde54d360de1972758bcde20f7eeee5a8d13a9a6b1921198c17616eee51f3e'
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
