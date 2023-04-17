import QtQuick 6.2
import QtQuick.Controls 6.2
import FlashCard

ApplicationWindow {
    id: root
    width: Constants.width
    height: Constants.height

    visible: true

    StackView {
        id: appStackView
        anchors.fill: parent
        initialItem: LoginPage {}
    }
}

