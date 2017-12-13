function Delete-Files
{
    echo "Hello, From Delete Program!"
    pause
    #${pool_name} = "Proxy_QA_431_main"
    $script:webappName = $script:qa_proxy[$script:webpool-1].name
    echo $webappName
    ${cur_drv} = (get-location).Drive.Name
    # Remove-Item ("D:\Q2\WWWROOT\$script:qa_proxy[$script:webpool-1].name\*") -recurse -exclude *.config -Force
    Remove-Item ("D:\Q2\WWWROOT\$script:webappName\*") -recurse -exclude *.config -Force
    write-host work in progress...
    # pause

}
