Add-Type -AssemblyName System.IO.Compression.FileSystem
# Add-Type -Path "C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.5\System.IO.Compression.FileSystem.dll"
function Unzip
{
    echo "Hello From The Unzip Program"
    #param([string]$zipfile, [string]$outpath)
    $script:zipfile = $script:hq_build[$script:build-1].FullName
    $script:outpath = ("D:\Q2\WWWROOT\${script:tempo}")
    [System.IO.Compression.ZipFile]::ExtractToDirectory($script:zipfile, $script:outpath)
    write-host work in progress...
    #Start-Sleep -s 5
    echo "GoodBye From The Unzip Program"
}
