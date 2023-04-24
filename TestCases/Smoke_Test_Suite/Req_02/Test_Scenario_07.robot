*** Settings ***
Test Setup        Click Create New Opportunity Button
Test Teardown     Click Bread Crumb Icon
Library           SeleniumLibrary
Resource          ../../Resources/Robot_Keywords.robot

*** Test Cases ***
TC_001
    [Documentation]    This test case will check if opportunity is created when clicking on Save Button.
    [Tags]    Smoke
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
    Enter Anticipated Duration Value    25
    Click Anticipated Duration DropDown
    Enter Anticipated Duration Type    weeks
    Click Rate Type DropDown
    Enter Rate Type    Weekly
    Click Save Button
    Verify Opportunity Name in Breadcrumb

TC_002
    [Documentation]    This test case will verify if opportunity is created.
    [Tags]    Smoke
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
    Enter Anticipated Duration Value    25
    Click Anticipated Duration DropDown
    Enter Anticipated Duration Type    weeks
    Click Rate Type DropDown
    Enter Rate Type    Weekly
    Add Teamlet    M/SM + 5
    Sleep    5s
    Verify Opportunity Name in Breadcrumb

TC_003
    [Documentation]    This test case is to verify if opportunity is created after adding Partner Team Member to opportunity.
    [Tags]    Smoke
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
    Enter Anticipated Duration Value    25
    Click Anticipated Duration DropDown
    Enter Anticipated Duration Type    weeks
    Click Rate Type DropDown
    Enter Rate Type    Weekly
    Add Partner Team Member    Senior Partner
    Sleep    5s
    Verify Opportunity Name in Breadcrumb

TC_004
    [Documentation]    This test case is to verify if opportunity is created after adding core team member to opportunity.
    [Tags]    Smoke
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
    Enter Anticipated Duration Value    25
    Click Anticipated Duration DropDown
    Enter Anticipated Duration Type    weeks
    Click Rate Type DropDown
    Enter Rate Type    Weekly
    Click Teams Button
    Sleep    1s
    Click Partner Team Button
    Sleep    1s
    Click Core Team Category Button
    Sleep    1s
    Add Core Team Member    Manager role (any level)
    Sleep    5s
    Verify Opportunity Name in Breadcrumb

TC_005
    [Documentation]    This test case is to verify whether opportunity is created when advisor button is clicked.
    [Tags]    Smoke
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
    Enter Anticipated Duration Value    25
    Click Anticipated Duration DropDown
    Enter Anticipated Duration Type    weeks
    Click Rate Type DropDown
    Enter Rate Type    Weekly
    Sleep    1s
    Click Teams Button
    Sleep    1s
    Click Partner Team Button
    Sleep    1s
    Click Core Team Button
    Sleep    1s
    Click Advisor Button
    Sleep    5s
    Verify Opportunity Name in Breadcrumb
