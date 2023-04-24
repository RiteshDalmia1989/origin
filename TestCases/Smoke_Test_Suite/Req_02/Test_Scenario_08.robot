*** Settings ***
Test Setup        Click Create New Opportunity Button
Library           SeleniumLibrary
Resource          ../../Resources/Robot_Keywords.robot

*** Test Cases ***
TC_001
    [Documentation]    This test case will verify whether the application navigates to opportunities page after clicking on Opportunities Bread Crumb.
    [Tags]    Smoke
    Verify Opportunity Page URL
    Click Bread Crumb Opportunities
    Verify Opportunities Page URL

TC_002
    [Documentation]    This test case will verify whether the application navigates to opportunities page after clicking Bread Crumb Icon.
    [Tags]    Smoke
    Verify Opportunity Page URL
    Click Bread Crumb Icon
    Verify Opportunities Page URL
