Function Start-Pool
{
    echo "Hello From Start App Pool Program !"
    Start-WebAppPool -Name $script:qa_proxy[$script:position-1].name
    echo "Goodbye Start App Pool Program!"
}
