foreach ($inputPath in $args) {
  Write-Output $inputPath
  If (!(Test-Path $inputPath)) {
    Write-Error "\"$inputPath\" is not found."
    continue
  }
  $item = Get-Item $inputPath
  $baseName = $item.BaseName
  $directory = $item.DirectoryName
  $outputPath = Join-Path $directory "$baseName.avi"
  ffmpeg.exe -y -i $inputPath $outputPath
}
Write-Output "Completed."
