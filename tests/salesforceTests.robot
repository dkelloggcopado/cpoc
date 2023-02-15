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
    ClickItem            edit                        anchor=Some unique name
    ClickText            Email
    ClickText            New Template
    TypeText             Name                        Test 1
    TypeText             Subject                     This is a test
    TypeText             Start typing to select profiles                        System Administrator
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
    TypeText             Select an option            HVS Public Group           anchor=Public Group Assignments
    HotKey               Enter
    ClickText            Next
    ClickText            Save
    ClickText            fit view                    timeout=5
    DragDrop             Email          Enroll Cadence Member       below=100    dragtime=9s