*** Settings ***

Resource   ../common_functionality.resource

*** Variables ***
${CHANGEADDRESS_LOCATOR}    (//a[text()='Change'])[1]
${ADDADDRESS_LOCATOR}    (//a[text()='Add a new shipping address'])
${NAME_LOCATOR}    //input[@name="address-ui-widgets-enterAddressFullName"]
${PHONENO_LOCATOR}    //input[@name="address-ui-widgets-enterAddressPhoneNumber"]
${PIN_LOCATOR}    //input[@name="address-ui-widgets-enterAddressPostalCode"]
${ADDRESS1_LOCATOR}    //input[@name="address-ui-widgets-enterAddressLine1"]
${ADDRESS2_LOCATOR}    //input[@name="address-ui-widgets-enterAddressLine2"]
${LANDMARK_LOCATOR}    //input[@name="address-ui-widgets-landmark"]
${CITY_LOCATOR}    //input[@name="address-ui-widgets-enterAddressCity"]
${DEFAULT_LOCATOR}    //input[@name="address-ui-widgets-use-as-my-default"]
${CLICKOK_LOCATOR}    //input[@class="a-button-input"]
*** Keywords ***

Click Change Address
    Click Element    ${CHANGEADDRESS_LOCATOR}
    
Click Add Address
    Click Element    ${ADDADDRESS_LOCATOR}
    
Enter Name
    [Arguments]    ${name}
    Input Text   ${NAME_LOCATOR}     ${name}
    
Enter Phone_Number
    [Arguments]    ${phoneNo}
    Input Text    ${PHONENO_LOCATOR}    ${phoneNo}
    
Enter Pin
    [Arguments]    ${pin}
    Input Text     ${PIN_LOCATOR}   ${PIN}
Enter Address1
    [Arguments]    ${address1}
    Input Text     ${ADDRESS1_LOCATOR}   ${address1}
    
Enter Address2
    [Arguments]    ${address2}
    Input Text     ${ADDRESS2_LOCATOR}      ${address2}
    
Enter Landmark
    [Arguments]    ${landmark}
    Input Text     ${LANDMARK_LOCATOR}   ${landmark}

Enter City
    [Arguments]    ${city}
    Input Text      ${CITY_LOCATOR}      ${city}
    
Click Default
    Click Element            ${DEFAULT_LOCATOR}
    
Click Ok
    Click Element     ${CLICKOK_LOCATOR}
    
verify name
    ${product_name}    Get Text    ${GETPRODUCTNAME_LOCATOR}
    Log To Console    ${product_name}
    
verify amount
    ${text}    Get Text    ${VERIFYAMOUNT_LOCATOR}
    Log To Console    ${text}
