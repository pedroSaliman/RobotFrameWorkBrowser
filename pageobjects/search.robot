*** Settings ***
Library  Browser
Variables   ../locators/locator.py
*** Keywords ***
Open My Page
     New Browser    chromium    headless=false
     New Context    viewport={'width': 1920, 'height': 1080}
     New Page       https://naveenautomationlabs.com/opencart/
SearchProduct1 
   [Arguments]    ${product1}     
     Fill Text    ${SEARCH_BAR}       ${product1}
      Press Keys   ${SEARCH_BAR}     Enter

SearchProduct2
    [Arguments]    ${product2}

    Clear Text     ${SEARCH_BAR}
     Fill Text    ${SEARCH_BAR}       ${product2}
    Press Keys   ${SEARCH_BAR}        Enter

Validation
    Get Text    ${H1}   ==   Search - HTC Touch HD