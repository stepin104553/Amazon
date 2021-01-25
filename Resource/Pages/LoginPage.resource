*** Settings ***
Documentation    This file will handle all the operation related to login page

Resource   ../common_functionality.resource

*** Variables ***
${EMAIL_LOCATOR}    //input[@name='email']
${CONTINUE_LOCATOR}    //input[@id='continue']
${PASSWORD_LOCATOR}    //input[@name="password"]

${SIGNIN_LOCATOR}       //input[@id='signInSubmit']

*** Keywords ***
Enter Email
    [Documentation]    Enter Email \n
    ...    Examples \n
    ...    | Enter Email | valli@gmail.com |
    [Arguments]    ${email}
    Input Text    ${EMAIL_LOCATOR}    ${email}

Click Continue
    Click Element   ${CONTINUE_LOCATOR}
     
Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password} 
      
Click Signin
    Click Element    ${SIGNIN_LOCATOR}
    
