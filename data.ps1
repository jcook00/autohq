function App-Data
{
	Write-Host "Hello, User Input Data!"
	$script:qa_proxy = (Get-ChildItem IIS:\AppPools\Proxy_QA_4* |select name, state |where {$_.state -ne "Stopped"})
	for ($i=0; $i -lt $qa_proxy.length; $i++){ Write-Host ($i+1),')',$qa_proxy[$i].name}
	$script:webpool = Read-Host "Please make a selection by entering the number"
	echo $script:qa_proxy[$script:webpool-1].name
    echo $script:webpool
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
