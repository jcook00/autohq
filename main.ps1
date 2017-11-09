$cur_dir = (Get-Item -Path ".\" -Verbose).FullName
. $cur_dir\menu.ps1
. $cur_dir\data.ps1
. $cur_dir\stopApp.ps1
. $cur_dir\startApp.ps1
. $cur_dir\archive.ps1
. $cur_dir\delete.ps1
. $cur_dir\copy.ps1
. $cur_dir\locationData.ps1
. $cur_dir\unzip.ps1

Import-Module ServerManager
Import-Module WebAdministration
Add-Type -AssemblyName System.IO.Compression.FileSystem

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
              '1' {
                cls
                'You chose option #1, stop app pool'
                echo "Hello, From Main Program!"
                App-Data("Stopped")
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                Stop-Pool
            } '2' {
                cls
                'You chose option #2, start app pool'
                echo "Hello, From Main Program!"
                App-Data("Started")
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                Start-Pool
            } '3' {
                cls
                'You chose option #3, update Hydra Proxy'
                echo "Hello, From Main Program!"
                Loc-Data
                App-Data("Stopped")
                Stop-Pool
                Archive-Files
                Delete-Files
                Unzip($script:zipfile, $script:outpath)
                echo "Hello, Again From Main Program!"
                echo "Goodbye, Leaving Main Program Again!"
                Start-Pool
                #(get $dir contents, present choice, read choice, confirm choice, store location in variable)
                #($zipfile $outpath)
                #Copy-Files ($outpath $destination)
            } '4' {
                cls
                'You chose option #4, update Hydra Services'
                echo "Hello, From Main Program!"
                #Loc-Data
                #App-Data("Started")
                #Stop-Pool
                #Archive-Files
                #Delete-Files(consider passing a parameter for excluded files *.config *.rlz)
                #Copy-Files (get $dir, present choice, read choice, confirm choice, perform operation)
                #App-Data("Started")
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
