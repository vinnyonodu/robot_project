*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Product Search Actions
    wait until page contains    Customer Service
    input text    id=twotabsearchtextbox    Reebok
    click button    id=nav-search-submit-button
    wait until page contains    results for "Reebok"
    sleep    3s
