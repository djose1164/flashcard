import QtQuick 2.15
import QtQuick.Controls 2.15
import FlashCard 1.0

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    ToolBar {
        id: toolBar
        anchors.right: parent.right
        z: 100
        anchors.left: parent.left
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font:  Constants.largeFont
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: root.width * 0.33
        height: root.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Home")
                width: parent.width
                onClicked: {
                    stackView.push("Screen01.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Perfil")
                width: parent.width
                onClicked: {
                    stackView.push("Screen02.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: toolBar.bottom
        anchors.bottom: parent.bottom
        initialItem: Home {}
    }
}
