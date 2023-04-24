*** Settings ***
Documentation     If user adds a team using the (+) icon at any point, this results in a similar functionality to the current version:
Suite Setup       Click Create New Opportunity Button
Suite Teardown    Click Bread Crumb Icon
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Variables ***
${Project_Name}    Pricing_Configurator_App


*** Test Cases ***
TC_001
    [Documentation]    Partner resources (Senior Partner, OVP, Partner (Advisor), Expert Partner, Expert Partner ADAPT, Expert Partner FRWD) will be added to the Partner Team block
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
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//following-sibling::div//div[@class='border-t border-b-0 border-l-0 border-r-0 border-tableBorder border-solid']//div//div//div//div//div[2]//div//div//div[2]//span[text()='Senior Partner']
    Add Partner Team Member    Senior Partner
    Sleep    5s
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//following-sibling::div//div[@class='border-t border-b-0 border-l-0 border-r-0 border-tableBorder border-solid']//div//div//div//div//div[2]//div//div//div[2]//span[text()='Senior Partner']

TC_002
    [Documentation]    If Partner Team does not exist yet, create a block with the first resource added (e.g., if no Partner Team yet, create one when user adds Expert Partner)
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
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']
    Add Partner Team Member    Expert Partner
    Sleep    5s
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@id='teamsData']

TC_003
    [Documentation]    Create a block with the same title as the team selected (e.g., if they add an M+2 then the title would be M+2.
    ...    If a team with this title has already been added and they add the same team, the new block will with the same name e.g., M/SM + 2_1,M/SM \ + 2_2,etc will show up as many times as they add it)
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
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='Partner Team']
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='M/SM + 5']
    Run Keyword And Ignore Error    FlexSeleniumLibrary.Page Should Not Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='M/SM + 5_Team_1']
    Add Teamlet    M/SM + 5
    Sleep    6s
    Add Teamlet    M/SM + 5
    Sleep    6s
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='Partner Team']
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='M/SM + 5']
    FlexSeleniumLibrary.Page Should Contain Element    xpath=//div[@id='teamsData']//div[@class='mb-4 last:mb-0']//div//div//div//div//div//div//div//div//span[text()='M/SM + 5_Team_1']
