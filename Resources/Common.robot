*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open vinnyz browser
    OPEN BROWSER    about:blank    chrome
    go to    http://www.amazon.com
End Web Test
    close browser
Insert Testing Data
    insert key
Cleanup Testing Data
    Log    cleaning...
insert key
    Log    inserting...