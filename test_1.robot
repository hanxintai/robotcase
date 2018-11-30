*** Settings ***
Documentation  A test case file

*** Variables ***
${val1}          value
@{listVal}       abc    def   123

*** Test Cases ***
Loop case
    :FOR    ${i}    IN RANGE    10
    \       log   ${i}    console=yes

Test case-1
    log  ${val1}  console=yes
    log many  @{listVal}
#    log  %{PATH}

Test case-2
    ${val2}=    set variable  abcd
    ${val3}=    set variable if  '${val2}' == 'abcd'      efgh        ace
    ${val4}=    get length      ${val2}
    ${val5}=    get time

Test case-3
    @{listA}    Create List     1    2    3
    @{listB}    Create List    a    b    c
    @{listC}    Create List    ${listA}    ${listB}    5
    log     @{listC}[1][1]
    log     ${listC[1][1]}