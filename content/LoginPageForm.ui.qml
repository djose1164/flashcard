import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.3
import FlashCard

Rectangle {
    id: item1
    property alias loginBtn: button
    property alias email: textField.text
    property alias password: textField1.text

    color: Constants.backgroundColor
    Label {
        id: label
        anchors.top: parent.top
        anchors.topMargin: 50
        color: "#000000"
        text: qsTr("RecuerdaMe")
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 16
    }

    ColumnLayout {
        id: columnLayout
        width: parent.width*.8
        height: parent.height*.33
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        TextField {
            id: textField
            Layout.fillWidth: true
            placeholderTextColor: "#000000"
            placeholderText: qsTr("Usario o correo electronico...")
            font.pointSize: 14
        }

        TextField {
            id: textField1
            Layout.fillWidth: true
            placeholderTextColor: "#000000"
            placeholderText: qsTr("Contrasena...")
            font.pointSize: 14
        }
    }

    Button {
        id: button
        anchors.top: columnLayout.bottom
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Iniciar sesion")
        icon.color: "#000000"
        font.pointSize: 14
    }

    Label {
        id: label1
        anchors.top: button.bottom
        anchors.margins: 50
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#000000"
        text: "Aun no tienes una cuenta? [Registrate](Signup.qml)"
        textFormat: Label.MarkdownText
        font.pointSize: 14
    }
}
