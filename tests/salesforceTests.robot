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
    ClickText            New Merge Field
    TypeText             New Merge Field             Test 1
    TypeText             Select Merge Field          First Name                  anchor=2
    HotKey               Enter
    TypeText             Name                        Test 3
    TypeText             Subject                     This is a test
    TypeText             Start typing to select profiles                         System Administrator
    HotKey               Enter
    HotKey               Tab
    WriteText            This is the subject line
    QVision.ClickText    Merge                       anchor=Font                 timeout=5
    ClickText            Test 1                      anchor=Font                 timeout=5
    ClickText            Save
    ClickText            Cadences
    ClickText            Create Cadence
    ClickText            Cadence Options
    TypeText             Select an option            Default
    HotKey               Enter
    TypeText             Select an option            HVS Public Group            anchor=Public Group Assignments
    HotKey               Enter
    ClickText            Next
    ClickText            Save
    ClickItem            fitview                     timeout=5
    DragDrop             Emailbutton                 Enroll Cadence Member       below=250                   dragtime=5    anchor=Steps
    ClickItem            fitview
    ClickText            Step information is incomplete
    TypeText             Step name*                  Email Step
    TypeText             Instructions*               You need to send this ASAP
    TypeText             Email Template              Test 3
    HotKey               Enter
    ClickText            Save                        anchor=Trace
    ClickText            Back to cadences
    ClickText            Yes

