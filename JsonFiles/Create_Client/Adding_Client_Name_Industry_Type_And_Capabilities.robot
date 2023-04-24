*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://pricing-dev.bain.com/login2

*** Test Cases ***
TC_001
    [Documentation]    TC to Add Client Name From Client List, Industry Type and All Capabilities.
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Wait Until Element is enabled  xpath=//span[text()='Log in as test user 1']
    Click Element    xpath=//span[text()='Log in as test user 1']
    Wait Until Element Is Enabled   xpath=//span[text()='Create a new opportunity']
    Click Element    xpath=//span[text()='Create a new opportunity']
    Wait Until Element Is Enabled    xpath=//input[@placeholder='Enter/Search Client*']
    Click Element    xpath=//input[@placeholder='Enter/Search Client*']
    Wait Until Element Is Enabled    xpath=//div[text()='100X']
    Click Element    xpath=//div[text()='100X']
    Wait Until Element Is Enabled    xpath=//span[@data-automationid='splitbuttonprimary']
    Click Element    xpath=//span[@data-automationid='splitbuttonprimary']
    Wait Until Element Is Enabled    xpath=//span[text()='Advanced Manufacturing & Services']
    Click Element    xpath=//span[text()='Advanced Manufacturing & Services']
    Wait Until Element Is Enabled    xpath=//input[@placeholder='Select Capability*']
    Click Element    xpath=//input[@placeholder='Select Capability*']
    Wait Until Element Is Enabled    xpath=//span[text()='(All Capabilities)']
    Click Element    xpath=//span[text()='(All Capabilities)']
    Wait Until Element Is Enabled    xpath=//input[@value='All Capabilities']
    Click Element    xpath=//input[@value='All Capabilities']

TC_002
    [Documentation]    TC to Add Client Name using Create Client, Industry Type and Not Sure Capability.
    Wait Until Element Is Enabled    xpath=//input[@placeholder='Enter/Search Client*']
    Click Element    xpath=//input[@placeholder='Enter/Search Client*']
    Wait Until Element Is Enabled    xpath=//span[text()='Create Client']
    Wait Until Element Is Enabled    xpath=//span[text()='Create Client']
    Click Element    xpath=//span[text()='Create Client']
    Input Text    xpath=//input[@value='100X']    Automation_Testing    clear=True
    Click Element    xpath=//i[@data-icon-name='Accept']
    Wait Until Element Is Enabled    xpath=//span[@data-automationid='splitbuttonprimary']
    Click Element    xpath=//span[@data-automationid='splitbuttonprimary']
    Wait Until Element Is Enabled    xpath=//span[text()='Advanced Manufacturing & Services']
    Click Element    xpath=//span[text()='Advanced Manufacturing & Services']
    Wait Until Element Is Enabled    xpath=//input[@placeholder='Select Capability*']
    Click Element    xpath=//input[@placeholder='Select Capability*']
    Wait Until Element Is Enabled    xpath=//span[text()='(All Capabilities)']
    Click Element    xpath=//span[text()='(All Capabilities)']
    Wait Until Element Is Enabled    xpath=//div[text()='Not Sure']
    Click Element    xpath=//div[text()='Not Sure']
    Close Browser