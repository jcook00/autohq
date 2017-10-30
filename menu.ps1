function Show-Menu
{
     param (
           [string]$Title = 'QA Hydra Update Menu'
     )
     # cls
     Write-Host "================ $Title ================"
     
     Write-Host "1: Press '1' to StopApp Pool."
     Write-Host "2: Press '2' to StartApp Pool."
     Write-Host "3: Press '3' to update Hydra Proxy."
     Write-Host "Q: Press 'Q' to quit."
}
