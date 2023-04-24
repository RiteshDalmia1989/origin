*** Settings ***
Suite Setup       Run Keywords    Open Application    Verify Opportunities Page URL
Suite Teardown    FlexSeleniumLibrary.Close All Browsers
Library           SeleniumLibrary
Resource          ../../Resources/Robot_Keywords.robot
Library           FlexSeleniumLibrary    ${Project_Name}

*** Variables ***
${Project_Name}    Pricing_Configurator_App
