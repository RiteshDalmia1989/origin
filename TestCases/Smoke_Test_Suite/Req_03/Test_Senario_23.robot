*** Settings ***
Documentation     There should be a remove button present next to edit group name checking the individual role and pressing remove will remove that role from the block
Test Setup        Click Create New Opportunity Button
Test Teardown     Click Bread Crumb Icon
Library           SeleniumLibrary    # This library is to access selenium based functions.
Library           Collections    # This library is to access collections based functions.
Library           String    # This library is to access string based functions.
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Test Cases ***
TC_001
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
    Click Role Check Box    Senior Partner
    Click Remove Button
    Sleep    2s
    Run Keyword And Expect Error    STARTS: Element with locator    Click Remove Button
