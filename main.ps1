$cur_dir = (Get-Item -Path ".\" -Verbose).FullName
. $cur_dir\menu.ps1
. $cur_dir\data.ps1
. $cur_dir\stopApp.ps1
. $cur_dir\startApp.ps1
. $cur_dir\archive.ps1
. $cur_dir\delete.ps1
. $cur_dir\copy.ps1

Import-Module ServerManager
Import-Module WebAdministration

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                cls
                'You chose option #1, stopApp pool'
                echo "Hello, From Main Program!"
                App-Data
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                Stop-Pool
           } '2' {
                cls
                'You chose option #2, startApp pool function'
                echo "Hello, From Main Program!"
                App-Data
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                Start-Pool
            } '3' {
                cls
                'You chose option #3, update Hydra Proxy'
                echo "Hello, From Main Program!"
                #App-Data
                #Stop-Pool
                #Archive-Files
                #Delete-Files
                #Copy-Files
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                #Start-Pool
            } '4' {
                cls
                'You chose option #4, update Hydra Services'
                echo "Hello, From Main Program!"
                #App-Data
                #Stop-Pool
                #Archive-Files
                #Delete-Files
                #Copy-Files
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                #Start-Pool
           } 'q' {
                return
           }
     }
     cmd /c pause | out-null
}
until ($input -eq 'q')
