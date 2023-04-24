*** Settings ***
Test Setup        Click Create New Opportunity Button
Test Teardown     Click Bread Crumb Icon
Library           SeleniumLibrary
Library           Collections
Resource          ../../Resources/Robot_Keywords.robot

*** Variables ***
@{Categories_Expected_AMER}    Managers    AC/Consultant    Expert    AAG    Innovation & Design    FRWD    Automation
${Categories_Expected_AMER}    Create List    @{Categories_Expected_AMER}
@{Categories_Actual_AMER}
${Categories_Actual_AMER}    Create List    @{Categories_Actual_AMER}
@{Roles_Actual_AMER}
${Roles_Actual_AMER}    Create List    @{Roles_Actual_AMER}
@{Roles_Expected_AMER}
${Roles_Expected_AMER}    Create List
@{Categories_Expected_EMEA}    Managers    AC/Consultant    Expert    AAG    Innovation & Design    FRWD    Automation
${Categories_Expected_EMEA}    Create List    @{Categories_Expected_EMEA}
@{Categories_Actual_EMEA}
${Categories_Actual_EMEA}    Create List    @{Categories_Actual_EMEA}
@{Roles_Actual_EMEA}
${Roles_Actual_EMEA}    Create List    @{Roles_Actual_EMEA}
@{Roles_Expected_EMEA}
${Roles_Expected_EMEA}    Create List    @{Roles_Expected_EMEA}
@{Categories_Expected_APAC}    Managers    AC/Consultant    Expert    AAG    Innovation & Design    FRWD    Automation
${Categories_Expected_APAC}    Create List    @{Categories_Expected_EMEA}
@{Categories_Actual_APAC}
${Categories_Actual_APAC}    Create List    @{Categories_Actual_EMEA}
@{Roles_Actual_APAC}
${Roles_Actual_APAC}    Create List
@{Roles_Expected_APAC}
${Roles_Expected_APAC}    Create List    @{Roles_Expected_EMEA}






*** Test Cases ***
TC_001
    [Documentation]    This test case is to verify full resource list under AMER region (USA Global pricing).
    #Run Keywords    Open Application    Verify Opportunities Page URL
    #Click Create New Opportunity Button
    Verify Opportunity Page URL
    Verify Client Name Field
    Click Client Name
    Select Client Name From DropDown    1800 Contacts
    Click Industry Type
    Enter Industry Type    Retail
    #Click Select Capabilities
    Select Capabilities    Advanced Analytics
    Click Primary Work Location DropDown Button
    Enter Primary Location    United States (for US-based clients local pricing)
    Click Currency DropDown Button
    Enter Currency    United States Dollar (USD)
    Verify Anticipated Duration Value    4    months
    Verify PreConfigured SKU button present
    Click PreConfigured SKU button
    Verify Teams Button
    Click Teams Button
    Verify Partner Team Button
    Click Partner Team Button
    Verify Core Team Category Button
    Click Core Team Category Button
    Sleep    2s
    @{Categories_AMER}=    Get Webelements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div[@class='mb-2']//span
    FOR    ${Category_AMER}    IN    @{Categories_AMER}
    Log    ${Category_AMER}
    ${C}=    Get Text    ${Category_AMER}
    Log    ${C}
    Append To List    ${Categories_Actual_AMER}    ${C}
    END
    Log    ${Categories_Actual_AMER}
    Should Be Equal    ${Categories_Actual_AMER}    ${Categories_Expected_AMER}
    #@{Roles_AMER}=    Get Webelements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div//span//div
    # FOR \ \ \ ${Role_AMER} \ \ \ IN \ \ \ @{Roles_AMER}
    # \ Log \ ${Role_AMER}
    # ${D}= \ Get Text \ ${Role_AMER}
    #Log ${D}
    #Append To List ${Roles_Actual_AMER} ${D}
    #END
    #Log \ ${Roles_Actual_AMER}
    #Click Bread Crumb Icon
    #Close Browser

TC_002
    [Documentation]    This test case is to verify full resource list under EMEA region (Italy (Eurozone pricing)).
    #Run Keywords    Open Application    Verify Opportunities Page URL
    #Click Create New Opportunity Button
    Verify Opportunity Page URL
    Verify Client Name Field
    Click Client Name
    Select Client Name From DropDown    1800 Contacts
    Click Industry Type
    Enter Industry Type    Retail
    #Click Select Capabilities
    Select Capabilities    Advanced Analytics
    Click Primary Work Location DropDown Button
    Enter Primary Location    Italy (Eurozone pricing)
    Click Currency DropDown Button
    Enter Currency    United States Dollar (USD)
    Verify Anticipated Duration Value    4    months
    Verify PreConfigured SKU button present
    Click PreConfigured SKU button
    Verify Teams Button
    Click Teams Button
    Verify Partner Team Button
    Click Partner Team Button
    Verify Core Team Category Button
    Click Core Team Category Button
    Sleep    2s
    @{Categories_EMEA}=    Get Webelements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div[@class='mb-2']//span
    FOR    ${Category_EMEA}    IN    @{Categories_EMEA}
    Log    ${Category_EMEA}
    ${C}=    Get Text    ${Category_EMEA}
    Log    ${C}
    Append To List    ${Categories_Actual_EMEA}    ${C}
    END
    Log    ${Categories_Actual_EMEA}
    Should Be Equal    ${Categories_Actual_EMEA}    ${Categories_Expected_EMEA}
    #@{Roles_AMER}=    Get Webelements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div//span//div
    #FOR    ${Role_AMER}    IN    @{Roles_AMER}
    # Log \ ${Role_AMER}
    #${D}= Get Text ${Role_AMER}
    #Log ${D}
    #Append To List ${Roles_Actual_AMER} ${D}
    #END
    #Log \ ${Roles_Actual_AMER}
    #Click Bread Crumb Icon
    #Close Browser

TC_003
    [Documentation]    This test case is to verify full resource list under APAC region (India (MNC clients)).
    #Run Keywords    Open Application    Verify Opportunities Page URL
    #Click Create New Opportunity Button
    Verify Opportunity Page URL
    Verify Client Name Field
    Click Client Name
    Select Client Name From DropDown    1800 Contacts
    Click Industry Type
    Enter Industry Type    Retail
    #Click Select Capabilities
    Select Capabilities    Advanced Analytics
    Click Primary Work Location DropDown Button
    Enter Primary Location    India (MNC clients)
    Click Currency DropDown Button
    Enter Currency    United States Dollar (USD)
    Verify Anticipated Duration Value    4    months
    Verify PreConfigured SKU button present
    Click PreConfigured SKU button
    Verify Teams Button
    Click Teams Button
    Verify Partner Team Button
    Click Partner Team Button
    Verify Core Team Category Button
    Click Core Team Category Button
    Sleep    2s
    @{Categories_APAC}=    Get Webelements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div[@class='mb-2']//span
    FOR    ${Category_APAC}    IN    @{Categories_APAC}
    Log    ${Category_APAC}
    ${C}=    Get Text    ${Category_APAC}
    Log    ${C}
    Append To List    ${Categories_Actual_APAC}    ${C}
    Sleep    1s
    END
    Log    ${Categories_Actual_APAC}
    Should Be Equal    ${Categories_Actual_APAC}    ${Categories_Expected_APAC}
    #@{Roles_AMER}=    Get Webelements    xpath=//div[@id='coreTeamListData']//div//div//div//div//div//span//div
    #FOR    ${Role_AMER}    IN    @{Roles_AMER}
    # Log \ ${Role_AMER}
    #${D}= Get Text ${Role_AMER}
    #Log ${D}
    #Append To List ${Roles_Actual_AMER} ${D}
    #END
    #Log \ ${Roles_Actual_AMER}
    #Click Bread Crumb Icon
    #Close Browser
