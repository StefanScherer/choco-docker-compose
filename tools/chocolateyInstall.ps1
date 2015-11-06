$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.5.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64
