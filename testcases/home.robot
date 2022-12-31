*** Settings ***
Documentation     TestCASE search Products
Library   Browser
Resource  ../pageobjects/search.robot


*** Variables ***


${product1}     Iphone
${product2}       HTC Touch HD 
*** Test Cases ***
Search
    Open My Page
    SearchProduct1    ${product1}
    
    

    SearchProduct2    ${product2}
    Validation