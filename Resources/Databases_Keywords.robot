*** Settings ***
Documentation     This file contains all keywords needed for database operations.
Library           DatabaseLibrary
Library           SeleniumLibrary
Resource          Robot_Keywords.robot

*** Variables ***
${DBHost}         pricing-dev.chz6xtndhhej.us-east-1.rds.amazonaws.com    # This variable contains database host value.
${DBName}         pricingdevdb    # This variable will contains database name value.
${DBPass}         Vcs!Fw7l*H    # This variable will contain database password value.
${DBPort}         5432    # This variable will contain database port value.
${DBUser}         bainadmin    # This variable will contain database user value.




*** Keywords ***
Connect DB
    [Documentation]    This method will connect to database.
    Connect To Database    psycopg2    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}

Disconnect DB
    [Documentation]    This method will disconnect database.
    Disconnect From Database

Fetch the list of all Team blocks added in Opportunity from DB
    [Documentation]    This will fetch opportunity team blocks from the db.
    ${Opportunity_Name_Value}=    Get Value    ${Opportunity_Name}
    Log    ${Opportunity_Name_Value}
    Connect DB
    @{Output}=    Execute Sql Script    select ac3.title from api_case ac \ inner join api_casescenario ac2 \ on ac.id \ = \ ac2.case_id inner join api_casemodule ac3 on ac2.id =ac3.scenario_id where ac.title ='${Opportunity_Name_Value}'\n
    Log    @{output}
    Disconnect DB

Extract Teamlet Values For Country
    [Arguments]    ${Country_Name}    # This variable is used to pass country name for which teamlet values needs to be extracted.
    [Documentation]    This method will extract teamlet values from database for country mentioned in argument.
    Connect DB
    @{Teamlets_List}=    Query    select distinct tl.name as teamlet from api_teamlet as tl inner join api_teamletcountryrole a\non tl.id = a.teamlet_id inner join api_country ac on a.country_id = ac.id and ac.name = ${Country_Name};
    Log Many
    Disconnect DB
    Return From Keyword    @{Teamlets_List}

Extract Country Names From Database
    Connect DB
    @{Countries_List}=    Query    select distinct ac.name as country_name from api_country ac order by country_name asc;
    Log Many    @{Countries_List}
    Disconnect DB
    Return From Keyword    @{Countries_List}

Extract Roles From Database
    Connect DB
    @{Roles_List}=    Query    select distinct au.name as role_name from api_universalrole au order by role_name asc;
    Log Many    @{Roles_List}
    Disconnect DB
    Return From Keyword    @{Roles_List}
