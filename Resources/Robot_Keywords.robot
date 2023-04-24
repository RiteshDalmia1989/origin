*** Settings ***
Library           FlexSeleniumLibrary    ${Project_Name}
Library           Collections
Library           String
Library           SeleniumLibrary

*** Variables ***
${Browser}        Chrome
${URL}            https://pricing-staging.bain.com/login2
#${Login_Page_URL} \ \ \ https://pricing-dev.bain.com/login2
${Login_Button}    xpath=//span[text()='Log in as test user 1']
#${Login_Button} \ xpath=//span[@id='id__0']
${Create_New_Opportunity_Button}    xpath=//span[text()='Create a new opportunity']//parent::span//parent::span//parent::button
${Opportunity_Page_URL}    https://pricing-staging.bain.com/opportunities/create-opportunity
${Opportunities_Page_URL}    https://pricing-staging.bain.com/opportunities
${Client_Name}    xpath=//input[@id='clientDropDownButton']
${Opportunity_Name}    xpath=//input[@placeholder='Enter Opportunity Name']
${Industry_Type}    xpath=//input[@placeholder='Select or type an industry']
${Capabilities_DropDown_Button}    xpath=//div[@id='Capability-dropdown']//div//button//span
${Capabilities}    xpath=//input[@id='Capability-dropdown-input']
${Start_Date}     xpath=//input[@placeholder='Est. Start Date']
${Client_Name_100x}    xpath=//div[text()='100X']
${Industry_Type_DropDown_Button}    xpath=//input[@id='Industry-dropdown-input']//parent::div//button
#${Industry_Type_Advanced_Manufacturing} \ \ \ xpath=//span[text()='Advanced Manufacturing & Services']
#${All_Capabilities} \ \ \ xpath=//span[text()='(All Capabilities)']
${Scenario_A}     xpath=//div[text()='Scenario A']
${Primary_Location_Header}    xpath=//div[text()='Primary Work Location']
${Primary_Location_Input_Field}    xpath=//input[@placeholder='Select a country']
${Primary_Location_Header_DropDown_Button}    xpath=//input[@id='Location-dropdown-input']//parent::div//button
${Base_Currency_Header}    xpath=//div[text()='Currency']
${Base_Currency_Input_Field}    xpath=//div[@id='Currency-dropdown']//div//input
${Currency_DropDown_Button}    xpath=//div[@id='Currency-dropdown']//div//button//span
${Anticipated_Duration_Header}    xpath=//div[text()='Anticipated Duration']
${Anticipated_Duration_Input_Field}    xpath=//input[@placeholder='e.g. 6, 2.5']
${Anticipated_Duration_Dropdown}    xpath=//div[@id='Anticipated-duration-dropdown']
${Anticipated_Duration_Dropdown_Option}    xpath=//span[@id='Anticipated-duration-dropdown-option']
${Rate_Type_Header}    xpath=//div[text()='Rate Type']
${Rate_Type_Dropdown}    xpath=//span[@id='Rate Type-option']
${Build_Proposal_Header}    xpath=//div[text()='Build Proposal']
${Partner_Team_Button}    xpath=//div[@class='w-full font-semibold']//div//div[2]//div//div//div//div[text()='Partner Team']
${Core_Team_Button}    xpath=//div[@class='w-full font-semibold']//div//div[2]//div//div//div//div[text()='Core Team']
${Bread_Crumb}    xpath=//div[text()='Opportunities']//parent::div//parent::div/preceding-sibling::div
${Bread_Crumb_Opportunities}    xpath=//div[text()='Opportunities']
${Bread_Crumb_Icon}    xpath=//div[text()='Opportunities']//parent::div//parent::div/preceding-sibling::div
${Save_Button}    xpath=//span[text()='Save']
${Create_Client_Button}    xpath=//span[text()='Create Client']
${Client_Name_Input_Field}    xpath=//div[@id='manualClient']//input
${Accept_Button}    xpath=//div[@id='manualClient']//div[2]//i
${Client_Name_List}    xpath=//div[@id='clientCallOut']//div//div//div//div//div//div
${Client_Name_Options}    xpath=//div[@id='clientCallOut']
${Core_Team_Category_Button}    xpath=//div[text()='Manager/Consultant/AC, Expert, AAG, I&D, FRWD, Automation, RTN']//parent::div//div[2]//i
${Advisor_Button}    xpath=//span[text()='Advisor']//parent::div//i
${Teams_Button}    xpath=//div[@class='w-full font-semibold']//div//div[2]//div//div//div//div[text()='Teams']
${Pre_Configured_SKU_Button}    xpath=//div[@class='w-full font-semibold']//div//div[2]//div//div//div//div[text()='Pre-configured SKUs']
${External_Advisor_Button}    xpath=//div[@class='w-full font-semibold']//div//div[2]//div//div//div//div[text()='External Advisors']
${OVP}            xpath=//span//div[text()='OVP']
${More_Buttons}    xpath=//div[@class='font-normal text-sm text-primary cursor-pointer' and contains(text(),'more')]    # This variable is to get list of all more buttons on page.
${Other_Resources_Button}    xpath=//div[@class='w-full font-semibold']//div//div[2]//div//div//div//div[text()='Other resources']    # This variable is to identify Other Resources button on page.


${Teamlet_List}    xpath=//div[@id='coreTeamListData']//div//div//div//div//div//div//span    # This variable is to get list of all teamlets under Teams option.





${Remove_Button}    //span[text()='Remove']
${Name_Checkbox}    //span[text()='Name']//preceding-sibling::div//label//div//i    # This xpath is for name check box.





${Project_Name}    Pricing_Configurator_App




${Projected_Price_Realization}    xpath=//input[@value='100']
${Pricing_to_Client}    xpath=//input[@id='pricingToClient']
${Fees_At_Risk_Checkbox}    xpath=//div[@class='ms-Checkbox-checkbox checkbox-393']//parent::label//parent::div//input[@id='checkbox-4327']
${Fees_At_Risk_Input_Box}    xpath=//input[@class='ms-TextField-field field-261']
${Fees_At_Risk_DropDown}    xpath=//div[@id='Dropdown4349']
${Direct_Expense_Input_Box}    xpath=//input[@id='undefined_percent_field']
${Direct_Expense_DropDown}    xpath=//div[@id='Dropdown4355']
${Direct_Expense_Collapse_Button}    xpath=//i[@id='react-collapsed-toggle-507']
${Travel_Input_Box}    xpath=//input[@id='travel_undefined']
${Travel_DropDown}    xpath=//div[@id='Dropdown4361']
${Research_Input_Box}    xpath=//input[@id='research_undefined']
${Research_DropDown}    xpath=//div[@id='Dropdown4367']
${Data_Services_Input_Box}    xpath=//input[@id='dataServices_undefined']
${Data_Services_DropDown}    xpath=//div[@id='Dropdown4373']
${SundryOrOther_Input_Box}    xpath=//input[@id='sundryOrOther_undefined']
${SundryOrOther_DorpDown}    xpath=//div[@id='Dropdown4379']
${Additional_Resource_And_Expenses_Header}    xpath=//div[text()='Additional Resource and Expenses']
${Additional_Resource_And_Expenses_Text}    xpath=//div[text()='Edit directly in Other Resources']
${Total_Expenses_Header}    xpath=//div[text()='Total Expenses']
${Total_Expenses_Text}    xpath=//div[text()='Note: Indirect expenses are included in fees and rates']
${Note_Text_Area}    xpath=//textarea[@placeholder="Add a note to support your proposal"]
${Pricing_To_Client_Incl_Expenses_Header}    xpath=//div[text()="Pricing to client (incl. expenses):"]
${Pricing_To_Client_Incl_Expenses_Text}    xpath=//div[text()="All applicable taxes are not included"]
${Cancel_Button}    xpath=//span[text()="Cancel"]
${Send_For_Approval_Button}    xpath=//span[text()="Send for Approval"]
${Final_Pricing_Tab_Collapse_Button}    xpath=//div[@class="border border-black border-solid w-6 h-6 rounded-sm flex justify-center items-center"]//i
${Extended_Payables_Input_Tab}    xpath=//input[@id='extendablePayablesInput']
${Total_Professional_Fees_Header}    //div[text()='Total Professional Fees']
${Total_Professional_Fees_Text}    //div[text()='Based on our 2023 rates & inclusive of chargebacks for indirect expenses.']
${Projected_Price_Realization_Header}    //div[text()='Projected Price Realization']
${Projected_Price_Realization_Text}    //div[text()='The ratio of Pricing to Client to Total Professional Fees - this reflects Bain economics on this engagement. A higher percentage is better']
${Pricing_To_Client_Header}    //div[text()='Pricing to Client']
${Pricing_To_Client_Text}    //div[text()='Best in class companies price to the value they’re creating (rather than the cost of their resources). They also leave room for negotiation. (Hint hint)']
${Fees_At_Risk_Header}    //div[text()='Fees At Risk']
${Fees_At_Risk_Link}    https://iris.bain.com/content-viewer/QYZDLM
${Direct_Expenses_Header}    //div[text()='Direct Expenses']
${Fees_At_Risk_Text}    xpath=//div[text()='Check this box if you would like to indicate a % or amount of fees at risk for this opportunity']
${Travel_Header}    //div[text()='Travel']
${Research_Header}    //div[text()='Research']
${Data_Services_Header}    //div[text()='Data services']
${SundryOrOther_Header}    //div[text()='Sundry/Other']







*** Keywords ***
Open Application
    [Documentation]    Opens browser, verifies URL of page and logins in to the application.
    &{desired_caps}=    Create Dictionary    screenResolution="1920X1200"
    FlexSeleniumLibrary.Open Browser    ${URL}    ${Browser}    desired_capabilities=&{desired_caps}
    FlexSeleniumLibrary.Maximize Browser Window
    #Set Window Size    1366    768
    #${width}    ${height}=    Get Window Size
    #Log    ${width}
    #Log    ${height}
    #Execute javascript    document.body.style.zoom="80%"
    FlexSeleniumLibrary.Location Should Be    ${URL}
    #Sleep    5s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Login_Button}    10s
    FlexSeleniumLibrary.Click Element    ${Login_Button}

Verify Opportunities Page URL
    [Documentation]    Verifies Opportunities Page URL.
    FlexSeleniumLibrary.Wait Until Location Is    ${Opportunities_Page_URL}    10s
    FlexSeleniumLibrary.Location Should Be    ${Opportunities_Page_URL}

Click Create New Opportunity Button
    [Documentation]    Clicks on create new opportunity button.
    Sleep    13s    button to become clickable.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Create_New_Opportunity_Button}    10s
    FlexSeleniumLibrary.Page Should Contain Button    ${Create_New_Opportunity_Button}
    FlexSeleniumLibrary.Click Button    ${Create_New_Opportunity_Button}
    Sleep    3s

Verify Opportunity Page URL
    [Documentation]    It will verify opportunity page URL.
    FlexSeleniumLibrary.Location Should Be    ${Opportunity_Page_URL}
    Sleep    3s    Wait for elements to be accessable

Verify Client Name Field
    [Documentation]    It will verify placeholder of Client Name Field.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Name}    10s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Client_Name}    placeholder    Enter/Search Client*

Verify Opportunity Name Field
    [Documentation]    It will verify placeholder of Opportunity Name Field.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Opportunity_Name}    10s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Opportunity_Name}    placeholder    Enter Opportunity Name

Verify Industry Type Field
    [Documentation]    It will verify placeholder of Industry Type Field.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Industry_Type}    10s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Industry_Type}    placeholder    Select or type an industry

Verify Capabilities Field
    [Documentation]    It will verify placeholder of Capabilities Field.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Capabilities}    10s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Capabilities}    placeholder    Select Capability*

Verify Start Date Field
    [Documentation]    It will verify palceholder of Start Date Field
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Start_Date}    10s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Start_Date}    placeholder    Est. Start Date

Click Client Name
    [Documentation]    This will click on Client Name Field
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Name}
    FlexSeleniumLibrary.Click Element    ${Client_Name}

Enter Client Name
    [Documentation]    It will enter 100x as client name in Client Name Field.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Name_100x}
    FlexSeleniumLibrary.Click Element    ${Client_Name_100x}

Select Client Name From DropDown
    [Arguments]    ${Client}
    [Documentation]    This will select client name from DropDown.
    ${Client_Selected}=    Catenate    SEPARATOR=    xpath=//div[text()='    ${Client}    ']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Selected}
    FlexSeleniumLibrary.Click Element    ${Client_Selected}

Click Industry Type
    [Documentation]    This will CLick on Industry Type
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Industry_Type_DropDown_Button}
    FlexSeleniumLibrary.Click Element    ${Industry_Type_DropDown_Button}

Enter Industry Type
    [Arguments]    ${Industry}
    [Documentation]    This will Enter Industry Type as mentioned in the argument.
    ${Industry_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Industry}    ']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Industry_Selected}
    FlexSeleniumLibrary.Click Element    ${Industry_Selected}

Click Select Capabilities
    [Documentation]    This will Click on Select Capabilities Field.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Capabilities_DropDown_Button}
    FlexSeleniumLibrary.Click Element    ${Capabilities_DropDown_Button}

Select Capabilities
    [Arguments]    ${Capability}
    [Documentation]    This will Select entered capability value form Capabilities List.
    ${Capability_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Capability}    ']
    #Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Capability_Selected}
    FlexSeleniumLibrary.Click Element    ${Capability_Selected}
    Sleep    5s

Verify Scenario A is present
    [Documentation]    This will verify Scenario A is present by default.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Scenario_A}
    FlexSeleniumLibrary.Click Element    ${Scenario_A}

Verify Primary Location Header
    [Documentation]    This will verify Primary Location Header on Page.
    FlexSeleniumLibrary.Element Should Be Visible    ${Primary_Location_Header}

Verify Primary Location Input Field
    [Documentation]    This will verify Primary Location Input Field.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Primary_Location_Input_Field}

Verify Base Currency Header
    [Documentation]    This will verify Base Currency Header on Page.
    FlexSeleniumLibrary.Element Should Be Visible    ${Base_Currency_Header}

Verify Base Currency Input Field
    [Documentation]    This will verify Base Currency Input Field.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Primary_Location_Input_Field}

Verify Anticipated Duration Header
    [Documentation]    This will verify Anticipated Duration Header on Page.
    FlexSeleniumLibrary.Element Should Be Visible    ${Anticipated_Duration_Header}

Verify Anticipated Duration Input Field
    [Documentation]    This will verify Anticipated Duration Input field on Page.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Anticipated_Duration_Input_Field}

Verify Anticipated Duration Dropdown
    [Documentation]    This will verify Anticipated Duration Dropdown on Page.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Anticipated_Duration_Dropdown}

Verify Rate Type Header
    [Documentation]    This will verify Rate Type Header on Page.
    FlexSeleniumLibrary.Element Should Be Visible    ${Rate_Type_Header}

Verify Rate Type Dropdown
    [Documentation]    This will verify Rate Type Dropdown on Page.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Rate_Type_Dropdown}

Click Primary Work Location DropDown Button
    [Documentation]    This will click on Primary Work Location DropDown Button.
    Sleep    3s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Primary_Location_Header_DropDown_Button}
    FlexSeleniumLibrary.Click Element    ${Primary_Location_Header_DropDown_Button}

Enter Primary Location
    [Arguments]    ${Location}
    [Documentation]    This will enter Primary Location as mentioned in argument.
    ${Location_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Location}    ']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Location_Selected}
    FlexSeleniumLibrary.Click Element    ${Location_Selected}
    Sleep    6s

Click Currency DropDown Button
    [Documentation]    This will click Currency DorpDown Button.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Currency_DropDown_Button}
    FlexSeleniumLibrary.Click Element    ${Currency_DropDown_Button}

Enter Currency
    [Arguments]    ${Currency}
    [Documentation]    This will enter Currenyc mentioned in the Argument.
    ${Currency_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Currency}    ']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Currency_Selected}
    FlexSeleniumLibrary.Click Element    ${Currency_Selected}
    Sleep    6s

Enter Anticipated Duration Value
    [Arguments]    ${Value}
    [Documentation]    This will the Anticipated Duration Value as mentioned in Argument.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Anticipated_Duration_Input_Field}
    FlexSeleniumLibrary.Press Keys    ${Anticipated_Duration_Input_Field}    CTRL+a+BACKSPACE
    #Clear Element Text    ${Anticipated_Duration_Input_Field}
    FlexSeleniumLibrary.Input Text    ${Anticipated_Duration_Input_Field} \    ${Value}    True

Click Anticipated Duration DropDown
    [Documentation]    This will click Anticipated Duration DropDown.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Anticipated_Duration_Dropdown}
    FlexSeleniumLibrary.Click Element    ${Anticipated_Duration_Dropdown}

Enter Anticipated Duration Type
    [Arguments]    ${Type}
    [Documentation]    This will Enter the Anticipated Duration Type as mentioned in Argument.
    ${Type_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Type}    ']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Type_Selected}
    FlexSeleniumLibrary.Click Element    ${Type_Selected}

Click Rate Type DropDown
    [Documentation]    This will click on Rate Type Dropdown Button.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Rate_Type_Dropdown}
    FlexSeleniumLibrary.Click Element    ${Rate_Type_Dropdown}

Enter Rate Type
    [Arguments]    ${Rate_Type}
    [Documentation]    This will enter Rate Type as mentioned as Argument.
    ${Rate_Type_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Rate_Type}    ']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Rate_Type_Selected}
    FlexSeleniumLibrary.Click Element    ${Rate_Type_Selected}
    Sleep    6s

Verify Build Proposal Header
    [Documentation]    This will verify Build Proposal Header is present on the page.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Build_Proposal_Header}
    FlexSeleniumLibrary.Element Should Be Visible    ${Build_Proposal_Header}

Verify Partner Team Button
    [Documentation]    This will verify Partner Team Button is present on the page.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Partner_Team_Button}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Partner_Team_Button}

Verify Core Team Button
    [Documentation]    This will verify Core Team Button is present on the page.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Core_Team_Button}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Core_Team_Button}

Click Partner Team Button
    [Documentation]    This will click partner team button.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Partner_Team_Button}
    FlexSeleniumLibrary.Click Element    ${Partner_Team_Button}

Click Core Team Button
    [Documentation]    This will click core team button.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Core_Team_Button}
    FlexSeleniumLibrary.Click Element    ${Core_Team_Button}

Verify Bread Crumb
    [Documentation]    This will verify Bread Crumb on the Page.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Bread_Crumb}

Veirfy Client Name Field Is Enabled
    [Documentation]    This will verify if Client Name Field is Enabled.
    FlexSeleniumLibrary.Element Should Be Enabled    ${Client_Name}

Verify Opportunity Name Field Is Disabled
    [Documentation]    This will verify if Opportunity Name Field is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Opportunity_Name}

Verify Industry Type Field Is Disabled
    [Documentation]    This will verify if Industry Type Field is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Industry_Type}

Verify Select Capabilities Field Is Disabled
    [Documentation]    This will verify if Select Capabilities Field is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Capabilities_DropDown_Button}

Verify Scenario A Tab Is Disabled
    [Documentation]    This will verify if Scenario A Tab is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Scenario_A}

Verify Primary Work Location Text Field Is Disabled
    [Documentation]    This will verify if Primary Work Location Text Field Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Primary_Location_Input_Field}

Verify Primary Work Location DropDown Is Disabled
    [Documentation]    This will verify if Primary Work Location DropDown Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Primary_Location_Header_DropDown_Button}

Verify Currency Text Field Is Disabled
    [Documentation]    This will verify if Currency Text Field Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Base_Currency_Input_Field}

Verify Currency DropDown Is Disabled
    [Documentation]    This will verify if Currency DropDown Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Currency_DropDown_Button}

Verify Anticipated Duration Input Field Is Disabled
    [Documentation]    This will verify if Anticipated Duration Input Field Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Anticipated_Duration_Input_Field}

Verify Anticipated Duration DropDown Is Disabled
    [Documentation]    This will verify if Anticipated Duration DropDown Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Anticipated_Duration_Dropdown}

Verify Rate Type DropDown Is Disabled
    [Documentation]    This will verify if Rate Type DropDown Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Rate_Type_Dropdown}

Verify Partner Team Button Is Disabled
    [Documentation]    This will verify if Partner Team Button Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Partner_Team_Button}

Verify Core Team Button Is Disabled
    [Documentation]    This will verify if Core Team Button Is Disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Core_Team_Button}

Click Bread Crumb Opportunities
    [Documentation]    This will click Opportunities Bread Crumb.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Bread_Crumb_Opportunities}
    FlexSeleniumLibrary.Click Element    ${Bread_Crumb_Opportunities}

Click Bread Crumb Icon
    [Documentation]    This will click Bread Crumb Icon.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Bread_Crumb_Icon}
    FlexSeleniumLibrary.Click Element    ${Bread_Crumb_Icon}

Verify Industry Type Field Is Enabled
    [Documentation]    This will verify Industry Type Field Is Enabled
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Industry_Type}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Industry_Type}
    Sleep    3s

Click Save Button
    [Documentation]    This will verify and click save button.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Save_Button}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Save_Button}
    FlexSeleniumLibrary.Click Element    ${Save_Button}
    Sleep    3s

Verify Opportunity Name in Breadcrumb
    [Documentation]    This will compare opportunity name in opportunity name field and breadcrumb.
    ${Opportunity_Name_Value}=    FlexSeleniumLibrary.Get Value    ${Opportunity_Name}
    Comment    ${LOG_FILE}    ${Opportunity_Name_Value}
    ${Breadcrumb_Opportunity_Name}=    Catenate    SEPARATOR=    xpath=//div[text()='    ${Opportunity_Name_Value}    ']
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Breadcrumb_Opportunity_Name}
    FlexSeleniumLibrary.Element Should Be Visible    ${Breadcrumb_Opportunity_Name}

Click Create Client Button
    [Documentation]    This will click create client button in client name drop down.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Create_Client_Button}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Create_Client_Button}
    FlexSeleniumLibrary.Click Element    ${Create_Client_Button}

Enter Client In Create Client Name Input Field
    [Arguments]    ${Name}
    [Documentation]    This will enter client name in the client name input text box.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Name_Input_Field}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Client_Name_Input_Field}
    #Click Element    ${Client_Name_Input_Field}
    FlexSeleniumLibrary.Press Keys    ${Client_Name_Input_Field}    CTRL+a+BACKSPACE
    FlexSeleniumLibrary.Input Text    ${Client_Name_Input_Field}    ${Name}

Click Accept Button
    [Documentation]    This will click on accept button on create client input field.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Accept_Button}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Accept_Button}
    FlexSeleniumLibrary.Click Element    ${Accept_Button}

Change Opportunity Name
    [Arguments]    ${Name}
    [Documentation]    This will change change the opportunity name to value provided as argument.
    FlexSeleniumLibrary.Press Keys    ${Opportunity_Name}    CTRL+a+BACKSPACE
    #Clear Element Text    ${Opportunity_Name}
    FlexSeleniumLibrary.Input Text    ${Opportunity_Name}    ${Name}    True

Verify Oppotunity Name Value
    [Arguments]    ${Value}
    [Documentation]    This will verify that the opportunity name value is same as the value mentioned in argument.
    ${Opportunity}=    FlexSeleniumLibrary.Get Value    ${Opportunity_Name}
    Should Be Equal    ${Value}    ${Opportunity}

Type Client Name in Client Name Input Text Box
    [Arguments]    ${Partial_Client_Name}
    [Documentation]    This will type the client name as mentioned in the argument in client name input text box.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Name}
    FlexSeleniumLibrary.Element Should Be Enabled    ${Client_Name}
    FlexSeleniumLibrary.Input Text    ${Client_Name}    ${Partial_Client_Name}    True

Verify Client Name List
    [Arguments]    ${Count}
    [Documentation]    This will count the number of elements found in the Client List
    ${Count}=    Convert To Integer    ${Count}
    ${Client_Names}=    FlexSeleniumLibrary.Get WebElements    ${Client_Name_List}
    ${Length}=    Get Length    ${Client_Names}
    Should Be Equal    ${Count}    ${Length}

Click Client Name Create Button
    [Arguments]    ${Client}
    [Documentation]    This will click on client name (create client) button.
    ${Client_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Client}
    ${Client_Selected}=    Catenate    ${Client_Selected}    (Create Client)']
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Client_Selected}
    FlexSeleniumLibrary.Click Element    ${Client_Selected}

Verify Client Name Field is disabled
    [Documentation]    This will verify whether client name field is disabled.
    FlexSeleniumLibrary.Element Should Be Disabled    ${Client_Name}

Verify Client Name List Is Not Present
    [Documentation]    This will verify that Client Name List is not present.
    FlexSeleniumLibrary.Element Should Not Be Visible    ${Client_Name_Options}

Verify Client Name Value
    [Arguments]    ${Value}
    [Documentation]    This will verify that the client name value is same as the value mentioned in argument.
    ${Client}=    FlexSeleniumLibrary.Get Value    ${Client_Name}
    Should Be Equal    ${Value}    ${Client}

Add Teamlet
    [Arguments]    ${Teamlet}
    [Documentation]    This will add teamlet mentioned in argument to the opportunity.
    ${Teamlet_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Teamlet}
    ${Teamlet_Selected}=    Catenate    SEPARATOR=    ${Teamlet_Selected}    ']//parent::div//i
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Teamlet_Selected}
    FlexSeleniumLibrary.Click Element    ${Teamlet_Selected}

Add Partner Team Member
    [Arguments]    ${Member}
    [Documentation]    This will add Partner Team Member mentioned in argument to the opportunity.
    ${Member_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Member}
    ${Member_Selected}=    Catenate    SEPARATOR=    ${Member_Selected}    ']//parent::div//i
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Member_Selected}
    FlexSeleniumLibrary.Click Element    ${Member_Selected}

Verify Core Team Category Button
    [Documentation]    This will verify core team category button is present on the page.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Core_Team_Category_Button}    10s

Click Core Team Category Button
    [Documentation]    This will click core team category button.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Core_Team_Category_Button}
    FlexSeleniumLibrary.Click Element    ${Core_Team_Category_Button}

Add Core Team Member
    [Arguments]    ${Member}
    [Documentation]    This will add partner team member as mentioned in the argument to the opportunity.
    ${Member_Selected}=    Catenate    SEPARATOR=    xpath=//div[text()='    ${Member}
    ${Member_Selected}=    Catenate    SEPARATOR=    ${Member_Selected}    ']//parent::span//parent::div//i
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Member_Selected}
    FlexSeleniumLibrary.Click Element    ${Member_Selected}

Click Advisor Button
    [Documentation]    This will add click on add button of advisor.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Advisor_Button}
    FlexSeleniumLibrary.Click Element    ${Advisor_Button}

Verify Teams Button
    [Documentation]    This will verify Teams Button on the page.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Teams_Button}    10s

Click Teams Button
    [Documentation]    This will click teams button.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Teams_Button}
    FlexSeleniumLibrary.Click Element    ${Teams_Button}

Verify Anticipated Duration Value
    [Arguments]    ${Value}    ${Duration}
    [Documentation]    This will compare the value present in anticipated duration text box with the value mentioned as argument.
    [Timeout]
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Anticipated_Duration_Input_Field}
    ${Actual_Value}=    FlexSeleniumLibrary.Get Value    ${Anticipated_Duration_Input_Field}
    Should Be Equal    ${Actual_Value}    ${Value}
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Anticipated_Duration_Dropdown_Option}
    ${Actual_Duration}=    Get Text Selenium    ${Anticipated_Duration_Dropdown_Option}
    Comment    ${Actual_Duration}=    FlexSeleniumLibrary.Get Text    ${Anticipated_Duration_Dropdown_Option}
    Should Be Equal    ${Actual_Duration}    ${Duration}

Verify PreConfigured SKU button present
    [Documentation]    This will verify pre-configured button is present on resource panel.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Pre_Configured_SKU_Button}    10s

Click PreConfigured SKU button
    [Documentation]    This will click the pre-configured sku button.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Pre_Configured_SKU_Button}    10s
    FlexSeleniumLibrary.Click Element    ${Pre_Configured_SKU_Button}

Mouse Hover Over Div Elements
    [Arguments]    ${Role}
    [Documentation]    This method will hover over role provided in argument.
    ${Role_Selected}=    Catenate    SEPARATOR=    xpath=//div[text()='    ${Role}
    ${Role_Selected}=    Catenate    SEPARATOR=    ${Role_Selected}    ']
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Role_Selected}    10s
    FlexSeleniumLibrary.Mouse Over    ${Role_Selected}

Verify Element Description Div1 Elements
    [Arguments]    ${Role}    ${Element_Description}
    [Documentation]    This method will compare description provided in argument with the description of the element in div1.
    ${Role_Description_Selected}=    Catenate    SEPARATOR=    xpath=//span//div[text()='    ${Role}
    ${Role_Description_Selected}=    Catenate    SEPARATOR=    ${Role_Description_Selected}    ']//div//div//div[1]
    #Wait Until Element Is Visible    ${OVP}    10s
    FlexSeleniumLibrary.Wait Until Page Contains Element    ${Role_Description_Selected}    10s
    #${Description}=    Get Text    ${Role_Description_Selected}
    #Log    ${Description}
    #Should Be Equal \ ${Element_Description}    ${Description}
    Sleep    2s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Role_Description_Selected}    innerHTML    ${Element_Description}
    #Element Attribute Value Should Be \    ${Role_Description_Selected}    text    ${Element_Description}

Verify Element Description Div2 Elements
    [Arguments]    ${Role}    ${Element_Description}
    [Documentation]    This method will compare description provided in argument with the description of the element in div2.
    ${Role_Description_Selected}=    Catenate    SEPARATOR=    xpath=//span//div[text()='    ${Role}
    ${Role_Description_Selected}=    Catenate    SEPARATOR=    ${Role_Description_Selected}    ']//div//div//div[2]
    #Wait Until Element Is Visible    ${OVP}    10s
    FlexSeleniumLibrary.Wait Until Page Contains Element    ${Role_Description_Selected}    10s
    #${Description}=    Get Text    ${Role_Description_Selected}
    #Log    ${Description}
    #Should Be Equal    ${Element_Description}    ${Description}
    Sleep    2s
    FlexSeleniumLibrary.Element Attribute Value Should Be    ${Role_Description_Selected}    innerHTML    ${Element_Description}
    #Element Attribute Value Should Be \ ${Role_Description_Selected}    text    ${Element_Description}

Click Teams More Button
    @{More}=    FlexSeleniumLibrary.Get WebElements    xpath=//div[@class='font-normal text-sm text-primary cursor-pointer' and contains(text(),'more')]
    Comment    Log    @{More}
    FOR    ${More}    IN    @{More}
        ${Button}=    FlexSeleniumLibrary.Get Text    ${More}
        Comment    Log    ${Button}
        Comment    Run Keyword if    "${Button}" != "${EMPTY}"    Click Element    ${More}
        IF    "${Button}" != "${EMPTY}"
            FlexSeleniumLibrary.Click Element    ${More}
            Exit For Loop
        END
    END

Verify External Advisor Button
    [Documentation]    This method will verify whether External Advisor Button is present on the page.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${External_Advisor_Button}    10s

Verify Other Resources Button
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Other_Resources_Button}    10s

Click External Advisor Button
    [Documentation]    This method will Click External Advisor Button on the page.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${External_Advisor_Button}
    FlexSeleniumLibrary.Click Element    ${External_Advisor_Button}

Click Other Resources Button
    [Documentation]    This method will click Other Resources button on the page.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Other_Resources_Button}
    FlexSeleniumLibrary.Click Element    ${Other_Resources_Button}

Verify Remove Button Is Present Above Partner Team Block
    [Documentation]    This function is to verify whether remove button is present under partner team block.
    FlexSeleniumLibrary.Wait Until Element Is Visible    ${Teams_Button}    10s

Click Remove Button
    [Documentation]    This function is to click remove button in partner team block.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Remove_Button}
    FlexSeleniumLibrary.Click Element    ${Remove_Button}

Click Role Check Box
    [Arguments]    ${Role}
    [Documentation]    This function is to click on check box besides the role provided as an argument.
    ${Role_Selected}=    Catenate    SEPARATOR=    xpath=//span[text()='    ${Role}
    ${Role_Selected}=    Catenate    SEPARATOR=    ${Role_Selected}    ']//parent::div//preceding-sibling::div//div//div//i
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Role_Selected}
    FlexSeleniumLibrary.Click Element    ${Role_Selected}
    Comment    Return From Keyword    ${Role_Selected}

Click On Check Box Besides Name Of The Role Table.
    [Documentation]    This function is to click on check box besides name of the role table.
    Sleep    1s
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Name_Checkbox}
    FlexSeleniumLibrary.Click Element    ${Name_Checkbox}

Verify Check Box Besides Name Of The Role Table
    [Documentation]    This function is to verify check box besides name of the role table.
    FlexSeleniumLibrary.Wait Until Element Is Enabled    ${Name_Checkbox}    10s
