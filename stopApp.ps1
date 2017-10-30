Function Stop-Pool
{
    echo "Hello Stop App Pool Program !"
    Stop-WebAppPool -Name $script:qa_proxy[$script:webpool-1].name
    echo "Goodbye Stop App Pool Program!"
}
