*** Settings ***
Library     Selenium2Library
Test Setup     otworz przegladarke
*** Test Cases ***
Test prawidlowy
    Go to     https://www.wp.pl
    sleep      5
    click element   css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
    input text     id=login     testerwsb_t1
    input text    id=password     adam1234\n
    sleep    10
    page should contain     Odebrane
    close all browsers
Test zle dane 1 login
    Go to     https://www.wp.pl
    sleep      5
    click element   css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
    input text     id=login     testerws_t1
    input text    id=password     adam1234\n
    sleep    10
    page should not contain     Odebrane
    close all browsers
Test zle dane 2 haslo
    Go to     https://www.wp.pl
    sleep      5
    click element   css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
    input text     id=login     testerwsb_t1
    input text    id=password     adam12\n
    sleep    10
    page should not contain     Odebrane
    close all browsers
Test zle dane 3 login i haslo
    Go to     https://www.wp.pl
    sleep      5
    click element   css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
    input text     id=login     testerws_t1
    input text    id=password     adam134\n
    sleep    10
    page should not contain     Odebrane
    close all browsers

*** Keywords ***
otworz przegladarke
      Open Browser    ${empty}     ff
