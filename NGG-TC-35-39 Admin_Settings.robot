*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Profile Admin_Settings
       [Tags]    Automation
       Open App
#  NGG-TC-39
    Home Admin Settings
#   NGG-TC-38
    App Version Admin Settings
#   NGG-TC-35
    Tuning File Reader Admin Settings
 #  NGG-TC-36
    Unsubscribe Admin Settings
#  NGG-TC-37
    Reboot Admin Settings