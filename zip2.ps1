Add-Type -AssemblyName System.IO.Compression.FileSystem
function Zip
{
    echo "Hello From The Zip Program"
    $script:sourceFolder = ("D:\Q2\WWWROOT\$script:webappName")
    #echo $script:sourceFolder = ("D:\Q2\WWWROOT\$script:webappName")
    $script:destinationZip = ("D:\Q2\!Archive\${script:webappName}")
    #pause
    write-host work in progress...
    [System.IO.Compression.ZipFile]::CreateFromDirectory($script:sourceFolder, $script:destinationZip)
    #Start-Sleep -s 5
    echo "GoodBye From The Zip Program"
}
