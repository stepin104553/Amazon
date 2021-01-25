*** Settings ***
Documentation    This file deals with all the operation on dashboard page

Resource      ../common_functionality.resource

*** Variables ***
#${NAME_LOCATOR}    //span[@data-bind="text:frame"]
${ALL_LOCATOR}     (//span[text()='All'])[2]
${SIGN_LOCATOR}    //b[text()='Hello, Sign in']
${SEARCH_LOCATOR}    //input[@id="twotabsearchtextbox"]     
${SUBMITTEXT_LOCATOR}     //span[@id="nav-search-submit-text"]
*** Keywords ***


    
Click All
    Click Element    ${ALL_LOCATOR}
 

Click Sign
   Click Element    ${SIGN_LOCATOR}
   
Enter ProductName
    [Arguments]    ${product_name}
    Input Text     ${SEARCH_LOCATOR}     ${product_name}
 
Click SubmitText
    Click Element     ${SUBMITTEXT_LOCATOR}

