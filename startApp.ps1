Function Start-Pool
{
    echo "Hello Start App Pool Program !"
    Start-WebAppPool -Name $script:qa_proxy[$script:webpool-1].name
    echo "Goodbye Start App Pool Program!"
}
