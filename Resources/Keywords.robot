*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}


#  NGG-TC-155
Home - Admin Settings

    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
# Code 1337
    press Keycode       8
    press Keycode       10
    Press Keycode       10
    Press Keycode       14
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Element Should Be Visible           id=com.sentrics.engage360:id/tvAppName            Profile

#  NGG-TC-156
App Version - Admin Settings
    Press Keycode       22
    Press Keycode       23

# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppVersionInstalledLabel
    Wait Until Element Is Visible            id=com.sentrics.engage360:id/btnUpdateManager
    Press Keycode          4

 #  NGG-TC-159
Tuning File Reader - Admin Settings
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Element Should Be Visible           id=com.sentrics.engage360:id/tvAppName         Back Up / Restore
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnLoadFromFile
    Element Should Be Visible           id=com.sentrics.engage360:id/btnLoadFromFile        FROM FILE

# Back
   Press Keycode        4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Element Should Be Visible           id=com.sentrics.engage360:id/tvAppName          Back Up / Restore

 #  NGG-TC-158
Unsubscribe - Admin Settings
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

# Click NO
    Wait Until Element Is Visible       id=android:id/button2
    Element Should Be Visible       id=android:id/button2       NO
    Press Keycode       23

# Back
   Press Keycode        4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Element Should Be Visible            id=com.sentrics.engage360:id/tvAppName          Back Up / Restore
#
# Return Unsubscribe
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

# Click YES
    Wait Until Element Is Visible       id=android:id/button1
    Element Should Be Visible       id=android:id/button1       YES
    Press Keycode       23

# Back
    Press Keycode        4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Element Should Be Visible            id=com.sentrics.engage360:id/tvAppName           Back Up / Restore

#  NGG-TC-157
Reboot - Admin Settings
    Press Keycode    22
    Press Keycode    20
    Press Keycode    23


