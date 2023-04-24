*** Settings ***
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
    [Documentation]    Between top and bottom bar the following rows should be present as Extended Payables, Total Professional Fees ,Projected Prize Realization, Pricing to client, Direct expenses, Additional resources as expenses.
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
    FlexSeleniumLibrary.Click Element    ${Final_Pricing_Tab_Collapse_Button}
    Sleep    3s
    FlexSeleniumLibrary.Page Should Contain Element    ${Extended_Payables_Input_Tab}
    FlexSeleniumLibrary.Page Should Contain Element    ${Total_Professional_Fees_Header}
    FlexSeleniumLibrary.Page Should Contain Element    ${Total_Professional_Fees_Text}
    FlexSeleniumLibrary.Page Should Contain Element    ${Projected_Price_Realization_Header}
    FlexSeleniumLibrary.Page Should Contain Element    ${Projected_Price_Realization}
    FlexSeleniumLibrary.Page Should Contain Element    ${Projected_Price_Realization_Text}
    FlexSeleniumLibrary.Page Should Contain Element    ${Pricing_To_Client_Header}
    FlexSeleniumLibrary.Page Should Contain Element    ${Pricing_To_Client_Text}
    FlexSeleniumLibrary.Page Should Contain Element    ${Pricing_to_Client}
    FlexSeleniumLibrary.Page Should Contain Element    ${Fees_At_Risk_Header}
    FlexSeleniumLibrary.Page Should Contain Element    ${Fees_At_Risk_Text}
    FlexSeleniumLibrary.Press Keys    xpath=//body    \ue00f
    Sleep    3s
    FlexSeleniumLibrary.Page Should Contain Link    ${Fees_At_Risk_Link}
    FlexSeleniumLibrary.Page Should Contain Element    ${Fees_At_Risk_Checkbox}
    FlexSeleniumLibrary.Page Should Contain Element    ${Fees_At_Risk_Input_Box}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Fees_At_Risk_DropDown}
    FlexSeleniumLibrary.Page Should Contain Element    ${Direct_Expenses_Header}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Direct_Expense_Input_Box}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Direct_Expense_DropDown}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Direct_Expense_Collapse_Button}
    Comment    FlexSeleniumLibrary.Click Element    ${Direct_Expense_Collapse_Button}
    Sleep    2s
    FlexSeleniumLibrary.Page Should Contain Element    ${Travel_Header}
    Comment    FlexSeleniumLibrary.Press Keys    xpath=//body    \ue00f
    Comment    Sleep    3s
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Travel_DropDown}
    FlexSeleniumLibrary.Page Should Contain Element    ${Research_Header}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Research_Input_Box}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Research_DropDown}
    FlexSeleniumLibrary.Page Should Contain Element    ${Data_Services_Header}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Data_Services_Input_Box}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${Data_Services_DropDown}
    FlexSeleniumLibrary.Page Should Contain Element    ${SundryOrOther_Header}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${SundryOrOther_Input_Box}
    Comment    FlexSeleniumLibrary.Page Should Contain Element    ${SundryOrOther_DorpDown}
    FlexSeleniumLibrary.Page Should Contain Element    ${Additional_Resource_And_Expenses_Header}
    FlexSeleniumLibrary.Page Should Contain Element    ${Additional_Resource_And_Expenses_Text}
