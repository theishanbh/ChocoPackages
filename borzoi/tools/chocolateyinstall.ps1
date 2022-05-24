$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileLocation        = Join-Path $toolsDir 'borzoi.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:chocolateyPackageName
  fileType      = 'EXE'
  file         = $fileLocation
  softwareName  = 'borzoi*' 
  checksum      = '7757f264c6880768ca63c9fdbdfb423ace2bf9ef4ea02310319e79d03494a4d9'
  checksumType  = 'sha256'
  checksum64    = '7757f264c6880768ca63c9fdbdfb423ace2bf9ef4ea02310319e79d03494a4d9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs