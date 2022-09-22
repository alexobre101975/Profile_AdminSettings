*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Profile Admin_Settings
       [Tags]    Automation
       Open App
#  NGG-TC-155
    Home - Admin Settings
#    NGG-TC-156
    App Version - Admin Settings
#   NGG-TC-159
    Tuning File Reader - Admin Settings
 #  NGG-TC-158
    Unsubscribe - Admin Settings
#  NGG-TC-157
    Reboot - Admin Settings