# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource          ../resources/common.robot
Suite Setup       Setup Browser
Suite Teardown    End suite
Library           FakerLibrary
Library           QVision


*** Test Cases ***
Lund Boats
    GoTo          https://www.lundboats.com/build/boat-configurator.Z1648.html
    SetConfig     LogMatchedIcons             True
    VerifyIcon    heritagered.png


