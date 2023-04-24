*** Settings ***
Documentation     All other resource except partner team should be added to Core team block.
Test Setup        Click Create New Opportunity Button
Test Teardown     Click Bread Crumb Icon
Library           SeleniumLibrary
Library           Collections
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Variables ***
@{Roles_Actual_DB}    # This list is used to append actual roles values from database.
${Roles_Actual_DB}    Create List    # This will create an empty list of actual roles form db.








*** Test Cases ***
TC_001
    [Documentation]    Test case Adding resources from Partner team and valiadting in which block it is added
    Verify Opportunity Page URL
    Verify Client Name Field
    Click Client Name
    Select Client Name From DropDown    1800 Contacts
    Click Industry Type
    Enter Industry Type    Retail
    #Click Select Capabilities
    Select Capabilities    Advanced Analytics
    Click Primary Work Location DropDown Button
    Enter Primary Location    United States (global pricing)
    Click Currency DropDown Button
    Enter Currency    United States Dollar (USD)
    Verify Anticipated Duration Value    4    months
    Verify PreConfigured SKU button present
    Click PreConfigured SKU button
    Verify Teams Button
    Click Teams Button
    Verify Partner Team Button
    Click Partner Team Button
    Verify Core Team Button
    Click Core Team Button
    Verify External Advisor Button
    Click External Advisor Button
    Verify Other Resources Button
    Click Other Resources Button
    Comment    Verify Partner Team Button
    Comment    Click Partner Team Button
    Verify Core Team Button
    Click Core Team Button
    Verify Core Team Category Button
    Click Core Team Category Button
    @{Roles_List}=    Extract Roles From Database
    Log Many    @{Roles_List}
    @{Country_List}=    Extract Country Names From Database
    Log Many    @{Country_List}
    FOR    ${Country}    IN    @{Country_List}
        IF    ${Country} == ('Canada (for Canada-based clients local pricing)',) or ${Country} == ('Canada (global pricing)',) or ${Country} == ('Greece (Eurozone pricing)',) or ${Country} == ('Greece (Local pricing)',) or ${Country} == ('India (Local clients)',) or ${Country} == ('India (MNC clients)',) or ${Country} == ('Italy (Eurozone pricing)',) or ${Country} == ('Italy (Local pricing)',) or ${Country} == ('Portugal (Eurozone pricing)',) or ${Country} == ('Portugal (Local pricing)',) or ${Country} == ('Spain (Eurozone pricing)',) or ${Country} == ('Spain (Local pricing)',) or ${Country} == ('United States (for US-based clients local pricing)',) or ${Country} == ('United States (global pricing)',)
            Log    ${Country}
            ${Country}=    Catenate    ${Country}
            ${Country}=    Get Substring    ${Country}    2    end=-3
            Log    ${Country}
            Click Primary Work Location DropDown Button
            Enter Primary Location    ${Country}
            Sleep    3s
        ELSE IF    ${Country} == ('Nigeria',) or ${Country} == ('Poland',)
            Continue For Loop
        ELSE
            ${Country}=    Catenate    ${Country}
            ${Country}=    Remove String    ${Country}    )
            ${Country}=    Remove String    ${Country}    (
            ${Country}=    Remove String    ${Country}    ,
            ${Country}=    Remove String    ${Country}    '
            ${Country}=    Remove String    ${Country}    '
            Click Primary Work Location DropDown Button
            Enter Primary Location    ${Country}
            Sleep    3s
    END
    FOR    ${Role}    IN    @{Roles_List}
        ${Role}=    Catenate    ${Role}
        ${Role}=    Remove String    ${Role}    )
        ${Role}=    Remove String    ${Role}    (
        ${Role}=    Remove String    ${Role}    ,
        ${Role}=    Remove String    ${Role}    '
        ${Role}=    Remove String    ${Role}    '
        Append To List    ${Roles_Actual_DB}    ${Role}
    END
    Log    ${Roles_Actual_DB}
    @{Roles_Actual_UI}=    Get WebElements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div//span
    Log Many    @{Roles_Actual_UI}
    FOR    ${Roles}    IN    @{Roles_Actual_UI}
        Comment    ${data}=    Get Element Attribute    ${Roles}    data
        ${Role}=    Get Text    ${Roles}
        Log    ${Role}
    END
