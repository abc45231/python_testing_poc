*** Settings ***
Resource          F:/Robot_Framework/Resources/UserKeyword.robot

*** Test Cases ***
TCS1_001
    [Tags]    Sanity
    [Setup]    openmaximizebrowser
    Input Text    id=email    uname
    Input Text    id=pass    pass1
    [Teardown]    closingallbrowsers

TCS1_002
    [Tags]    Smoke
    [Setup]    openmaximizebrowser
    Element Should Not Be Visible    id=u_0_b11    message -Error we are not getting correct element on page
    [Teardown]    closingallbrowsers

TCS1_003
    [Documentation]    Use of should be keywords
    [Setup]    openmaximizebrowser
    ${get_title}=    Get Title
    log    ${get_title}
    Sleep    2s
    Should Not Be Equal As Strings    Facebook – log in    ${get_title}
    [Teardown]    closingallbrowsers

TCS1_004
    [Tags]    Smoke
    [Setup]    openmaximizebrowser
    Input Text    id=email    uname
    Input Text    id=pass    pass1
    [Teardown]    closingallbrowsers
