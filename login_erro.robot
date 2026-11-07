*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login Com Erro
    Open Browser    https://www.saucedemo.com    chrome
    Input Text    id=user-name    standard_user
    Input Password    id=password    senha_errada
    Click Button    id=login-button

    Page Should Contain    Epic sadface

     Sleep    8s

    Close Browser