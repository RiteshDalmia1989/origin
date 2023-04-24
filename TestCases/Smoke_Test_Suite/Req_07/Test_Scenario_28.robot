*** Settings ***
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Variables ***
${List_Of_Tabs}    Create List
@{List_Of_Tabs}




*** Test Cases ***
TC_001
    [Documentation]    After user creates an opportunity, minimized panel is active.
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
    Select Capabilities    Advanced Analytics
    Click Primary Work Location DropDown Button
    Enter Primary Location    Argentina
    Click Currency DropDown Button
    Enter Currency    Argentine Peso (ARS)
    Verify Anticipated Duration Value    4    months
    Click PreConfigured SKU button
    Click Teams Button
    Verify Partner Team Button
    Click Partner Team Button
    Click Teams Button
    Sleep    1s
    Add Teamlet    M/SM + 5
    Sleep    6s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    xpath=//div[@class='flex justify-between items-center cursor-pointer px-4 h-14 text-textBlack']    10s
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@class='flex justify-between items-center cursor-pointer px-4 h-14 text-textBlack']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    xpath=//div[@class='bg-blue1 px-4 py-3 flex gap-2']    10s
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@class='bg-blue1 px-4 py-3 flex gap-2']
