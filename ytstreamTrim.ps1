$files = Get-ChildItem *.mkv
foreach ($file in $files) { 
    $filename = [System.IO.Path]::GetFileNameWithoutExtension($file);
    $outname = $filename + ".mp4";

    ffmpeg -err_detect ignore_err -i $file -c copy $outname;
    Remove-Item $file;
}