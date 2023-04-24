*** Settings ***
Suite Setup       Run Keywords    Open Application    Verify Opportunities Page URL
Suite Teardown    FlexSeleniumLibrary.Close All Browsers
Library           SeleniumLibrary
Resource          ../../Resources/Robot_Keywords.robot
