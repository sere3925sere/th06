$client = New-Object System.Net.WebClient

$ARCHIVE_DOWNLOAD_BASE_URL="https://archive.org/download"
$DX8_FILE_NAME="dx8sdk.exe"
$DX8_URL="$ARCHIVE_DOWNLOAD_BASE_URL/dx8sdk/$DX8_FILE_NAME"

$VS_02_FILE_NAME="en_vs.net_pro_full.exe"
$VS_02_URL="$ARCHIVE_DOWNLOAD_BASE_URL/en_vs.net_pro_full/$VS_02_FILE_NAME"

$SCRIPT_DIR=$PSScriptRoot
$DL_PATH="$SCRIPT_DIR/dls"

New-Item -ItemType Directory -Force -Path $DL_PATH

if (!(Test-Path "$DL_PATH/$DX8_FILE_NAME")) {
    Write-Host "Downloading Direct X 8.0"
    $client.DownloadFile($DX8_URL, "$DL_PATH/$DX8_FILE_NAME")
}

if (!(Test-Path "$DL_PATH/$VS_02_FILE_NAME")) {
    Write-Host "Downloading Visual Studio 2002"
    $client.DownloadFile($VS_02_URL, "$DL_PATH/$VS_02_FILE_NAME")
}