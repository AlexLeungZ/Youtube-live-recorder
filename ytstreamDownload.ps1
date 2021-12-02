$channel = "astateoftrance";
$url = "https://www.youtube.com/c/astateoftrance" + "/live";

While ($true) {
    $timestamp = (Get-Date -Date ((Get-Date).DateTime) -UFormat "%Y-%m-%d %Hh%Mm%Ss");

    streamlink --hls-live-restart $url best -o $($channel + " - " + $timestamp + ".mkv");
    Start-Sleep -Seconds 15;
}