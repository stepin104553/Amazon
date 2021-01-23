*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_Test
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://www.amazon.in/     browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Set Selenium Timeout    40s
    Click Element    (//span[text()='All'])[2]
    Click Element     //b[text()='Hello, Sign in'] 
    Input Text    //input[@name='email']    valli.potlacheruvu@gmail.com       
    Click Element    //input[@id='continue']
    Input Text    //input[@name="password"]    bujji2023    
    Click Element    //input[@id='signInSubmit']
    Input Text    //input[@id="twotabsearchtextbox"]      Vstargallery Soft Cute 3 feet Teddy Bear for Girls/Lover Gift Pink 90 cm Large  
    
    Click Element    //span[@id="nav-search-submit-text"]    
    Click Element    //img[@alt='Vstargallery Soft Cute 3 feet Teddy Bear for Girls/Lover Gift Pink 90 cm Large']
    
    # ${tabid}    Get Window Handles   
    # Log To Console     ${tabid}  
    # ${count}    Get Length     ${tabid} 
    # Log To Console    ${count}
    
    ${titles}    Get Window Titles 
    Log To Console     ${titles}           
    ${count}    Get Length     ${titles} 
    Log To Console    ${count}
        
    Run Keyword If    ${count}>1    Switch Window    NEW     
    # Switch Window    NEW  
    # Wait Until Element Contains    //input[@name="submit.add-to-cart"]    Add to Cart  
    Wait Until Page Contains Element    //input[@name="submit.add-to-cart"]        
    Click Element   //input[@name="submit.add-to-cart"] 
       
    Click Element    //div[@id="nav-cart-count-container"]    
    #Switch Window     Amazon.in Shopping Cart
    Sleep    3s    
    Click Element    //input[@name="proceedToRetailCheckout"]
    Click Element    (//span[text()='Pay on Delivery'])[2]    
    Sleep    2s    
    Click Element    (//input[@class="a-button-input a-button-text"])[3]   
    Click Element    (//a[text()='Change'])[1]
    Sleep    2s    
    Click Element    (//div[text()='Add a new shipping address'])[4]    
    Input Text    //input[@name="address-ui-widgets-enterAddressFullName"]    valli
    Input Text    //input[@name="address-ui-widgets-enterAddressPhoneNumber"]    8919644707    
    Input Text    //input[@name="address-ui-widgets-enterAddressPostalCode"]    534211    
    Input Text    //input[@name="address-ui-widgets-enterAddressLine1"]    narendra center
    Input Text    //input[@name="address-ui-widgets-enterAddressLine2"]    rudraraju vari street
    Input Text    //input[@name="address-ui-widgets-landmark"]    narendra theater    
    Input Text    //input[@name="address-ui-widgets-enterAddressCity"]    tanuku    
    #Click Element    //span[text()='Select state']    
    #Click Element    //a[text()='ANDHRA PRADESH']      
    Click Element            //input[@name="address-ui-widgets-use-as-my-default"]      
    Click Element    //input[@class="a-button-input"]    
    ${text}    Get Text    //td[@class="a-color-price a-size-medium a-text-right grand-total-price aok-nowrap a-text-bold a-nowrap"]
    Log To Console    ${text}   
    ${product_name}    Get Text    //strong[text()='Vstargallery Soft Cute 3 feet Teddy Bear for Girls/Lover Gift Pink 90 cm Large']
    Log To Console    ${product_name}     