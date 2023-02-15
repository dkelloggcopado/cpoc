# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                 ../resources/common.robot
Suite Setup              Setup Browser
Suite Teardown           End suite
Library                  QVision


*** Test Cases ***
Conquer PoC
    Login
    QVision.ClickText    Login with Salesforce
    SwitchWindow         NEW
    CloseWindow
    UseTable             Name
    ClickIcon            edit                        anchor=
    ClickTableCell       c7                          r4
