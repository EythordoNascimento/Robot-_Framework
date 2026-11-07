*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login Com Sucesso
    Open Browser    https://www.saucedemo.com    chrome
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button

    Page Should Contain    Products

     Sleep    8s

    Close Browser