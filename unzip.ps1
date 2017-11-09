Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    echo "Hello From The Unzip Program"
    #param([string]$zipfile, [string]$outpath)
    [System.IO.Compression.ZipFile]::ExtractToDirectory($script:zipfile, $script:outpath)
}
