function Copy-Files
{
    echo "Hello, From Copy Program!"
    pause
    ${pool_name} = "Proxy_QA_431_main"
    ${cur_drv} = (get-location).Drive.Name
    Copy-Item ${cur_drv}:\Q2\WWWROOT\${pool_name}\* -DestinationPath ${cur_drv}:\Q2\WWWROOT\Archive\${pool_name}
    write-host work in progress...
    pause

}
