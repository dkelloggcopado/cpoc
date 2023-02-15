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
    ClickText            Email
    ClickText            New Template
    TypeText             Name                        Test 1
    TypeText             Subject                     This is a test
    TypeText             Start typing to select profiles                      System Administrator
    HotKey               Enter
    HotKey               Tab
    WriteText            This is the subject line
    #TypeText            Select a footer             Test
    ClickText            Save
    ClickText            Cadences
    ClickText            Create Cadence
    ClickText            Cadence Options
    TypeText             Select an option            Default
    HotKey               Enter
    TypeText             Select an option            HVS Public Group         anchor=Public Group Assignments
    HotKey               Enter
    ClickText            Next
    ClickText            Save
    ClickItem            fitview                     timeout=5
    UseModal             On
    DragDrop             Phone Call                  Enroll Cadence Member    below=250                   dragtime=5
    ClickText            Email                       anchor=Step information is incomplete
    TypeText             Step name*                  Email Step              
    TypeText             Instructions*               You need to send this ASAP
    TypeText             Email Template              Test 1
    HotKey               Enter
    ClickText            Save                        anchor=Trace
    ClickItem            fitview
    ClickText            Back to cadences
    ClickText            Yes