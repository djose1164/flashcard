/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import FlashCard 1.0
import QtQuick.Layouts 6.3

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor

    property alias button: button

    Button {
        id: button
        x: 125
        y: 454
        text: qsTr("Registrarse")
    }

    GridLayout {
        id: gridLayout
        x: 34
        y: 157
        width: 279
        height: 215
        columns: 2

        TextField {
            id: textField
            color: "#000000"
            placeholderTextColor: "#000000"
            placeholderText: qsTr("Nombre (s)...")
        }

        TextField {
            id: textField1
            color: "#000000"
            placeholderTextColor: "#000000"
            placeholderText: qsTr("Apellido (s)...")
        }

        TextField {
            id: textField2
            color: "#000000"
            placeholderTextColor: "#000000"
            Layout.fillWidth: true
            Layout.columnSpan: 2
            placeholderText: qsTr("Correo Electronico...")
        }

        TextField {
            id: textField3
            color: "#000000"
            placeholderTextColor: "#000000"
            Layout.columnSpan: 2
            Layout.fillWidth: true
            placeholderText: qsTr("Contraseña..")
        }
    }

    Label {
        id: label
        y: 541
        text: qsTr("Ya tienes una cuenta? Inicia sesion")
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        id: label1
        y: 65
        text: qsTr("Registrarse")
        horizontalAlignment: Text.AlignLeft
        font.bold: true
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 14
    }
}
