*** Settings ***
Documentation     If user deletes a member of the M+X block, the corresponding Partner team member will remain in the Partner team block.
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Test Setup
Library           SeleniumLibrary
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot
Library           Collections

*** Test Cases ***
TC_001
    [Documentation]    If user deletes a member of the M+X block, the corresponding Partner team member will remain in the Partner team block.
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
    Sleep    5s
    FlexSeleniumLibrary.Press Keys    xpath=//body    \ue00f
    Click Role Check Box    SM/AP
    Sleep    1s
    FlexSeleniumLibrary.Press Keys    xpath=//body    \ue00e
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='Partner Team']
