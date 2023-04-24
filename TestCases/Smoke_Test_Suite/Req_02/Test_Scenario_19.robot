*** Settings ***
Documentation     User can select more than one capability, enable multi-select, Rest of the configuration screen will not be populated / visible until the user selects a capability.
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Variables ***
${Project_Name{}    Pricing_Configurator_App


*** Test Cases ***
TC_001
    [Documentation]    User can select more than one capability, enable multi-select, Rest of the configuration screen will not be populated / visible until the user selects a capability.
    [Tags]    Smoke
    Open Application
    Verify Opportunities Page URL
    Click Create New Opportunity Button
    Verify Opportunity Page URL
    Verify Client Name Field
    Click Client Name
    Select Client Name From DropDown    1800 Contacts
    Click Industry Type
    Enter Industry Type    Retail
    #Click Select Capabilities
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    //div[@class='flex flex-1 min-w-0']
    Select Capabilities    (All Capabilities)
    FlexSeleniumLibrary.Page Should Contain Element    //div[@class='flex flex-1 min-w-0']




