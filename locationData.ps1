function Loc-Data
{
    Write-Host "Hello, From My User Input Location Data Program!"
    $ver = Read-Host -Prompt "Enter The New Version Number"
    $answer = Read-Host "Enter Y If $ver Is The Correct Version"
    if ($answer -eq 'Y') {
        Write-Host "We found these..."
        $script:hq_build = (Get-ChildItem D:\Build\Q2Hydra\HQ_$ver\Production |select name, FullName)
        for ($i=0; $i -lt $hq_build.length; $i++){ Write-Host ($i+1),')',$hq_build[$i].name}
            $script:position = Read-Host "Please make a selection by entering the number"
            echo $hq_build[$script:position-1].name
            $script:hp = $hq_build[$script:position-1].name
            $answer = Read-Host -Prompt "Enter Y if You Want To Update Hydra Proxy With $script:hp"
            if ($answer -eq 'Y') {
                'do something'
                $script:zipfile = $script:hq_build[$script:position-1].FullName
                $script:tempo = $script:qa_proxy[$script:position-1].name
                $script:outpath = ("D:\Q2\WWWROOT\$script:tempo")
                echo "The file will be unzipped here: $script:outpath"

            }Else{
                Write-Host "Skipping..."
                break
            }

    }Else {

        Write-Host "Skipping..."
        break
    }
    echo "Goodbye User Input Location Data Program!"
    #Start-Sleep -s 5
    #cmd /c pause | out-null
}
