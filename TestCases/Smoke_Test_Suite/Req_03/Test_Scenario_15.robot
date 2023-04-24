*** Settings ***
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           SeleniumLibrary
Library           Collections
Resource          ../../Resources/Robot_Keywords.robot

*** Test Cases ***
TC_001
    [Documentation]    This test case is to verify that when user clicks on plus icon of partner resource than that resource is added to partner team block.
    [Tags]    Smoke
    Comment    Open Application
    Comment    Verify Opportunities Page URL
    Comment    Click Create New Opportunity Button
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
    Sleep    8s
    Comment    Click Bread Crumb Icon
