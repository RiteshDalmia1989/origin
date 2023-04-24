*** Settings ***
Suite Setup       Run Keywords    Open Application    Verify Opportunities Page URL
Suite Teardown    FlexSeleniumLibrary.Close All Browsers
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Resource          ../../Resources/Robot_Keywords.robot
Resource          ../../Resources/Databases_Keywords.robot

*** Variables ***
${Project_Name}    Pricing_Configurator_App
