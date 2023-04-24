*** Settings ***
Documentation     Checking the box at the top (next to name) and pressing remove will remove the entire block.
Test Setup        Click Create New Opportunity Button
Test Teardown     Click Bread Crumb Icon
Library           SeleniumLibrary
Library           Collections
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Test Cases ***
TC_001
    [Documentation]    Checking the box at the top (next to name) and pressing remove will remove the entire block.
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
    #Click Partner Team Button
    Add Partner Team Member    Senior Partner
    Sleep    3s
    Add Partner Team Member    Partner (Advisor)
    Verify Check Box Besides Name Of The Role Table
    Click On Check Box Besides Name Of The Role Table.
    Click Remove Button
    Sleep    2s
    Run Keyword And Expect Error    STARTS: Element with locator    Click Remove Button
