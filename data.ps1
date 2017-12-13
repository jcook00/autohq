function App-Data($status)
{
    Write-Host "Hello, From My User Input Data Program!"
    $script:qa_proxy = (Get-ChildItem IIS:\AppPools\Proxy_QA_4* |select name, state, FullName |where {$_.state -ne "$status"})
    for ($i=0; $i -lt $qa_proxy.length; $i++){ Write-Host ($i+1),')',$qa_proxy[$i].name}
    $script:position = Read-Host "Please make a selection by entering the number"
    echo $script:qa_proxy[$script:position-1].name
    $script:webappName = $script:qa_proxy[$script:position-1].name
    $answer = Read-Host -Prompt "Enter Y if You Want To Update $script:webappName"
        if ($answer -eq 'Y') {
            'Hey Tootsie, You Are On A Roll!'

        }  Else {

    Write-Host "Skipping..."
    break

    }
    echo "Goodbye User Input Program!"
    # cmd /c pause | out-null
    #echo $script:webappName
}
