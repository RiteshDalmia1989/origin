*** Settings ***
Documentation     The Save button position should be in lower bar of minimized Pricing Summary panel, between buttons for “Cancel” and “Send for Approval”, and will remain on the lower bar if panel is expanded
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Resource          ../../../Resources/Robot_Keywords.robot
Resource          ../../../Resources/Databases_Keywords.robot

*** Variables ***
${Project_Name}    Pricing_Configurator_V2_App

*** Test Cases ***
TC_001
    [Documentation]    The Save button position should be in lower bar of minimized Pricing Summary panel, between buttons for “Cancel” and “Send for Approval”, and will remain on the lower bar if panel is expanded
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
