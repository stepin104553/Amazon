*** Settings ***
Documentation    This file deals with finding the details of patient

Resource      ../common_functionality.resource

*** Variables ***

${PAYMENTMETHOD_LOCATOR}    (//span[text()='Pay on Delivery'])[2]
${CONTINUEPAYMENT_LOCATOR}    (//input[@class="a-button-input a-button-text"])[4]
*** Keywords ***
Click Payment Method
    Click Element    ${PAYMENTMETHOD_LOCATOR}
    
Click Continue Payment
    Click Element    ${CONTINUEPAYMENT_LOCATOR}
