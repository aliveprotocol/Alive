import QtQuick 2.15
import QtQuick.Controls 2.15
import "../Components"

Item {
    property alias backBtnMouseArea: hiveLoginBackBtn.btnMouseArea
    property alias proceedLoginBtnMouseArea: proceedLoginBtn.btnMouseArea
    property alias hiveUsername: hiveUsernameField.text
    property alias hiveKey: hiveKeyField.text

    RoundedBtn {
        id: hiveLoginBackBtn
        btnLabel: qsTr("<< Back")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 25
        anchors.leftMargin: 25
    }

    Text {
        id: hiveLoginTitle
        color: "#ffffff"
        text: qsTr("Hive Login")
        anchors.bottom: hiveLoginDescription.top
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 50
    }

    Text {
        id: hiveLoginDescription
        width: 736
        height: 48
        color: "#ffffff"
        text: qsTr("Log in using your Hive username and posting key.")
        anchors.bottom: hiveUsernameField.top
        anchors.bottomMargin: 70
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        font.pixelSize: 18
    }

    TextField {
        id: hiveUsernameField
        width: 347
        height: 26
        readOnly: false
        placeholderText: "Username"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 0
    }

    TextField {
        id: hiveKeyField
        width: 347
        height: 26
        placeholderText: "Posting Key"
        readOnly: false
        echoMode: TextInput.Password
        anchors.top: hiveUsernameField.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    BigButton {
        id: proceedLoginBtn
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: hiveKeyField.bottom
        anchors.topMargin: 40
        btnLabel: qsTr("Login")
    }

    Text {
        id: element
        color: "#ffffff"
        text: qsTr("No account? Get one at signup.hive.io.")
        anchors.top: proceedLoginBtn.bottom
        anchors.topMargin: 60
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 18
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:768;width:1024}
}
##^##*/
