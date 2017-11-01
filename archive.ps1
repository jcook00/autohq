function Archive-Files
{
    echo "Hello, From Archive Program!"
    pause
    ${pool_name} = "Proxy_QA_431_main"
    ${cur_drv} = (get-location).Drive.Name
	Compress-Archive -Path ${cur_drv}:\Q2\WWWROOT\${pool_name} -DestinationPath ${cur_drv}:\Q2\WWWROOT\Archive\${pool_name}
	write-host work in progress...
	pause

}
