*** Settings ***
Documentation    This file test the valid credential
#Resource    ../Resource/common_functionality.resource
Resource   ../Resource/Pages/verify.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup    launch browser
Test Teardown    End browser
Test Template    Verify_Valid_Credentials_Test
*** Test Cases ***