function Delete-Files
{
    echo "Hello, From Delete Program!"
    pause
    ${pool_name} = "Proxy_QA_431_main"
    ${cur_drv} = (get-location).Drive.Name
    Remove-Item ${cur_drv}:\Q2\WWWROOT\${pool_name}\* -recurse -exclude *.config
    write-host work in progress...
    pause

}
