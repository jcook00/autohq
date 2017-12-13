Function Stop-Pool
{
    echo "Please Wait While We Stop The App Pool"
    Stop-WebAppPool -Name $script:qa_proxy[$script:position-1].name
    echo "The App Pool Has Been Stopped"
}
