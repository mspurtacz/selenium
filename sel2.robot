*** Settings ***
Library     Selenium2Library
*** Test Cases ***
Test 1
    Open Browser    ${empty}     ff
    Go to     https://www.wp.pl
    sleep      5
    click element   css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
    input text     id=login     testerws_t1
    input text    id=password     adam1234\n
    sleep    10
    page should not contain     Odebrane
    close all browsers
