*** Settings ***
Documentation    this file contain patient details

Resource    ../Resource/common_functionality.resource
Resource    ../Resource/Pages/DashboardPage.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/Product.resource
Resource    ../Resource/Pages/PaymentDetails.resource
Resource    ../Resource/Pages/address.resource

Test Setup    launch browser
Test Teardown    End browser
*** Test Cases ***
TC1_Valid
    

    Click All
    Click Sign
    Enter Email    valli.potlacheruvu@gmail.com
    Click Continue    
    Enter Password    bujji2023
    Click Signin
    Enter ProductName    Vstargallery Soft Cute 3 feet Teddy Bear for Girls/Lover Gift Pink 90 cm Large
    Click SubmitText
    Click Product
     ${titles}    Get Window Titles 
    Log To Console     ${titles}           
    ${count}    Get Length     ${titles} 
    Log To Console    ${count}
        
    Run Keyword If    ${count}>1    Switch Window    NEW   
    Wait
    Click Add To Cart
    Click CartIcon
    Sleep    3s
    Click Checkout
    Click Payment Method
    Sleep    2s    
    Click Continue Payment
    #Click Element    (//input[@class="a-button-input a-button-text"])[4]
    Click Change Address
    Sleep    2s    
    Click Add Address
    Enter Name    valli
    Enter Phone_Number    8919644707
    Enter Pin    534211
    
    Enter Address1    narendra center
    Enter Address2    rudraraju vari street
    Enter Landmark    narendra theater
    Enter City    tanuku
    Click Default
    Click Ok
   # ${text}    Get Text    //td[@class="a-color-price a-size-medium a-text-right grand-total-price aok-nowrap a-text-bold a-nowrap"]
   # Log To Console    ${text}   
   # ${product_name}    Get Text    //strong[text()='Vstargallery Soft Cute 3 feet Teddy Bear for Girls/Lover Gift Pink 90 cm Large']
   # Log To Console    ${product_name}
    verify amount   
    verify name 
