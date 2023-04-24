*** Settings ***
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Resource          ../../../Resources/Robot_Keywords.robot
Resource          ../../../Resources/Databases_Keywords.robot

*** Variables ***
${Project_Name}    Pricing_Configurator_App



*** Test Cases ***
TC_001
    [Documentation]    If the user removes all resources, the minimized panel should revert to grey format and the “Send for Approval” button will be inactive
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
    Sleep    1s
    FlexSeleniumLibrary.Element Attribute Value Should Be    xpath=//div[@id='react-collapsed-toggle-3']    style    background-color: rgb(243, 242, 241);
    FlexSeleniumLibrary.Element Should Not Be Visible    xpath=//span[text()='Email for Approval']//parent::span//parent::span//parent::button//parent::div
    Add Partner Team Member    Senior Partner
    Sleep    3s
    FlexSeleniumLibrary.Element Attribute Value Should Be    xpath=//div[@id='react-collapsed-toggle-3']    style    background-color: rgb(223, 246, 221);
    FlexSeleniumLibrary.Element Should Be Enabled    xpath=//span[text()='Email for Approval']//parent::span//parent::span//parent::button//parent::div
    Click Role Check Box    Senior Partner
    Click Remove Button
    Sleep    3s
    FlexSeleniumLibrary.Element Attribute Value Should Be    xpath=//div[@id='react-collapsed-toggle-3']    style    background-color: rgb(243, 242, 241);
    FlexSeleniumLibrary.Element Should Not Be Visible    xpath=//span[text()='Email for Approval']//parent::span//parent::span//parent::button//parent::div
