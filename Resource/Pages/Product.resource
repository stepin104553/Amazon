*** Settings ***
Documentation    This file deals with all the operation on dashboard page

Resource      ../common_functionality.resource
Resource   DashboardPage.resource


*** Variables ***

${CLICKPRODUCT_LOCATOR}    //img[@alt='Vstargallery Soft Cute 3 feet Teddy Bear for Girls/Lover Gift Pink 90 cm Large']
${WAIT_LOCATOR}    //input[@name="submit.add-to-cart"]
${ADDPRODUCT_LOCATOR}    //input[@name="submit.add-to-cart"]
${CARTICON_LOCATOR}    //div[@id="nav-cart-count-container"]
${CHECKOUT_LOCATOR}    //input[@name="proceedToRetailCheckout"]

*** Keywords ***
Click Product
    Click Element    ${CLICKPRODUCT_LOCATOR}

Wait  
    Wait Until Page Contains Element    ${WAIT_LOCATOR}

Click Add To Cart
    Click Element   ${ADDPRODUCT_LOCATOR}
    
Click CartIcon
     Click Element    ${CARTICON_LOCATOR}
     
Click Checkout
    Click Element    ${CHECKOUT_LOCATOR}
    
