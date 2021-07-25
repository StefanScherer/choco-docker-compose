#!/bin/bash
set -e

if [ "$1" = "" ]; then
  echo "Usage: $0 version"
  echo "Update the choco package to a given version"
  echo "Example: $0 1.25.3"
  exit 1
fi

if [[ "${OSTYPE}" != "darwin"* ]] && [[ "${OSTYPE}" != "linux"* ]]; then
  echo "This version does only support Mac/Linux."
  exit 2
fi

version=$1

url="https://github.com/docker/compose/releases/download/${version}/docker-compose-Windows-x86_64.exe"

checksum=$(curl -Lf "${url}" | shasum -a 256 - | cut -f 1 -d " ")

sed -i.bak "s/<version>.*<\/version>/<version>${version}<\/version>/" docker-compose.nuspec

sed -i.bak "s/version: .*{build}/version: ${version}.{build}/" appveyor.yml

sed -i.bak "s!^\$url = '.*'!\$url = '${url}'!" tools/chocolateyInstall.ps1
sed -i.bak "s/^\$checksum = '.*'/\$checksum = '${checksum}'/" tools/chocolateyInstall.ps1
