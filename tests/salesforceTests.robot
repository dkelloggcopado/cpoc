# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Conquer PoC
    Login
    UseTable    Name
    ClickText   Edit    anchor=Some unique name
    ClickTableCell      c7    r4    
    