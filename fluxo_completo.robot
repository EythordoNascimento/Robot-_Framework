*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Fluxo Completo De Compra
    Open Browser    https://www.saucedemo.com    chrome

    Sleep    2s

    Input Text    id=user-name    standard_user
    Sleep    1s

    Input Password    id=password    secret_sauce
    Sleep    1s

    Click Button    id=login-button
    Sleep    2s

    Click Button    id=add-to-cart-sauce-labs-backpack
    Sleep    2s

    Click Element    class=shopping_cart_link
    Sleep    2s

    Click Button    id=checkout
    Sleep    2s

    Input Text    id=first-name    Eythor
    Input Text    id=last-name     Nascimento 
    Input Text    id=postal-code   50000

    Sleep    2s

    Click Button    id=continue
    Sleep    2s

    Click Button    id=finish
    Sleep    5s

    Page Should Contain    Thank you for your order!

    Sleep    10s

    Close Browser