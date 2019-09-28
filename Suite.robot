*** Settings ***
Library           ../../PYTHON_MODULES/Keywords.py
Resource          F:/Robot_Framework/TestCases_Login/Combination.robot

*** Test Cases ***
Case1
    ${resultvalue}=    Join Two Words    Testing    World
    log    ${resultvalue}

Case2
    Combinationkeyword
