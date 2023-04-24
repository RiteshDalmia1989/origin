*** Settings ***
Test Setup        Click Create New Opportunity Button
Test Teardown     Click Bread Crumb Icon
Library           SeleniumLibrary
Library           Collections
Resource          ../../Resources/Robot_Keywords.robot

*** Test Cases ***
TC_001
    [Documentation]    This test case is to verify whether information is displayed for OVP under Partner Team when user hovers over it.
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
    Verify Core Team Button
    Click Core Team Button
    Verify Partner Team Button
    Click Partner Team Button
    Sleep    1s
    Mouse Hover Over Div Elements    OVP
    Verify Element Description Div1 Elements    OVP    When AP plays OVP role select OVP resource for pricing
    #Click Bread Crumb Icon
    #Close Browser

TC_002
    [Documentation]    This test case is to verify whether information is displayed for Manager role (any level) under Core Team when user hovers over it.
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
    Verify Core Team Button
    #Click Core Team Button
    Click Core Team Category Button
    Sleep    1s
    Mouse Hover Over Div Elements    Manager role (any level)
    Verify Element Description Div1 Elements    Manager role (any level)    In AMER, Manager (any level) includes M, SM &amp; AP
    Verify Element Description Div2 Elements    Manager role (any level)    ${SPACE}In EMEA and APAC, Manager (any level) includes SM &amp; AP only
    #Click Bread Crumb Icon
    #Close Browser

TC_003
    [Documentation]    This test case is to verify whether information is displayed for AC/Consultant role under Core Team when user hovers over it.
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
    Verify Core Team Button
    #Click Core Team Button
    Click Core Team Category Button
    Sleep    1s
    Mouse Hover Over Div Elements    AC/Consultant
    Verify Element Description Div1 Elements    AC/Consultant    In AMER, AC/Consultant includes C &amp; AC only
    Verify Element Description Div2 Elements    AC/Consultant    ${SPACE}In EMEA, AC/Consultant includes M, C &amp; AC
    #Click Bread Crumb Icon
    #Close Browser

TC_004
    [Documentation]    This test case is to verify whether information is displayed for FRWD Teamlet Leader role under Core Team when user hovers over it.
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
    Verify Core Team Button
    #Click Core Team Button
    Click Core Team Category Button
    Sleep    1s
    Mouse Hover Over Div Elements    FRWD Teamlet Leader
    Verify Element Description Div1 Elements    FRWD Teamlet Leader    This includes FRWD Senior Manager and (Senior) Director roles
    #Click Bread Crumb Icon
    #Close Browser

TC_005
    [Documentation]    This test case is to verify whether information is displayed for FRWD Team Member role under Core Team when user hovers over it.
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
    Verify Core Team Button
    #Click Core Team Button
    Click Core Team Category Button
    Sleep    1s
    Mouse Hover Over Div Elements    FRWD Team Member
    Verify Element Description Div1 Elements    FRWD Team Member    This includes FRWD (Senior) Associate and Manager roles
    #Click Bread Crumb Icon
    #Close Browser
