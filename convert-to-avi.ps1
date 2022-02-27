foreach ($inputPath in $args) {
  Write-Output $inputPath
  If (!(Test-Path $inputPath)) {
    Write-Error "\"$inputPath\" is not found."
    continue
  }
  $item = Get-Item $inputPath
  $baseName = $item.BaseName
  $directory = $item.DirectoryName
  $outputPath = Join-Path $directory "$baseName-processed.mp4"
  ffmpeg.exe -y -i $inputPath -vcodec h264 -s 1024:576 -ar 44100 $outputPath
}
Write-Output "Completed."
