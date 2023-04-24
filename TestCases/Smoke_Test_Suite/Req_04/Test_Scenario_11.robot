*** Settings ***
Documentation     If user deletes an entire M+X block, the corresponding Partner team member(s) will be removed and the user will get a warning message before-hand stating:
...               ‘Associated partner team members have been removed’ and user will need to press ‘OK’ before the entire block is deleted
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot
Library           SeleniumLibrary
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections

*** Variables ***
${Name_Checkboxes}    Create List    # This list is to store values for name checkboxes on page.
@{Name_Checkboxes}
${Remove_Buttons}    Create List    # This list is to store remove buttons present on page.
@{Remove_Buttons}


${Project_Name}    Pricing_Configurator_App






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
    Click Partner Team Button
    Click Teams Button
    Sleep    1s
    Add Teamlet    M/SM + 5
    Sleep    5s
    Comment    FlexSeleniumLibrary.Click Element    //i[@data-icon-name="ScaleVolume"]
    Comment    FlexSeleniumLibrary.Execute Javascript    JAVASCRIPT    window.scrollTo    ARGUMENTS    0, window.scrollY+10000
    Comment    FlexSeleniumLibrary.Scroll Element Into View    xpath=//span[text()='Name']//preceding-sibling::div//label//div//i//parent::div//parent::label//parent::div//input[@id='checkbox-2424']
    Comment    FlexSeleniumLibrary.Wait Until Element Is Enabled    xpath=//span[text()='Name']//preceding-sibling::div//label//div//i//parent::div//parent::label//parent::div//input[@id='checkbox-2424']
    Comment    FlexSeleniumLibrary.Set Focus To Element    xpath=//span[text()='Name']//preceding-sibling::div//label//div//i//parent::div//parent::label//parent::div//input[@id='checkbox-2424']
    FlexSeleniumLibrary.Press Keys    xpath=//body    \ue00f
    Comment    FlexSeleniumLibrary.Press Keys    xpath=//body    \ue00f
    Sleep    5s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    xpath=//span[text()='SM/AP']//parent::div//parent::div//parent::div//parent::div//preceding-sibling::div//span//div//label//div//i    10s
    FlexSeleniumLibrary.Click Element    xpath=//span[text()='SM/AP']//parent::div//parent::div//parent::div//parent::div//preceding-sibling::div//span//div//label//div//i
    Sleep    6s
    Comment    FlexSeleniumLibrary.Scroll Element Into View    xpath=//div[text()='Manager role (any level)']//parent::div//parent::span//parent::div//parent::div//parent::div//parent::div//parent::div//div//span//div//label//div//i
    FlexSeleniumLibrary.Click Element    xpath=//span[text()='SM/AP']//parent::div//parent::div//parent::div//parent::div//preceding-sibling::div//parent::div//parent::div//parent::div//parent::div//parent::div//parent::div//preceding-sibling::div//div//div//div//span[2]
    Sleep    20s
    FlexSeleniumLibrary.Page Should Contain Element    //div[text()='Info']//parent::div//parent::div
    FlexSeleniumLibrary.Click Element    xpath=//span[text()='OK']
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='M/SM + 5']
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='Partner Team']
