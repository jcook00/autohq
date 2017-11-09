function Loc-Data
{
	Write-Host "Hello, My User Input Data!"
    $ver = Read-Host -Prompt "Enter The Version Number"
    $answer = Read-Host "If this is correct? Enter Y" $ver
        if ($answer -eq 'Y') {
            echo $ver
            echo $answer
            'Great! let us find that zipped file'

        }  Else {

    Write-Host "Skipping..."
    break
    }

	$script:hq_build = (Get-ChildItem C:\Q2\builds\HQ_$ver\Production |select name, FullName)
	for ($i=0; $i -lt $hq_build.length; $i++){ Write-Host ($i+1),')',$hq_build[$i].name}
	$script:build = Read-Host "Please make a selection by entering the number"
	echo "First Echo!"
    echo $script:hq_build[$script:build-1].name
    $script:zipfile = $script:hq_build[$script:build-1].FullName
    echo $script:zipfile
    $script:outpath = ("C:\Q2\WWWROOT\${pool_name}")
    echo "The file will be unzipped here:"
    echo $script:outpath
    #echo $script:hq_build[$script:build-1].FullName
    #[io.path]::GetFileNameWithoutExtension("C:\Q2\builds\HQ_$ver\Production\HqProxy_$ver.zip")
    #$script:outpath = "C:\Q2\builds\HQ_$ver\Production"

    $answer = Read-Host -Prompt "Enter Y if Correct"
        if ($answer -eq 'Y') {
            'do something'

        }  Else {

    Write-Host "Skipping..."
    break

    }
    echo "Goodbye User Input Program!"
	cmd /c pause | out-null
}
