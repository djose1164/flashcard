/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import FlashCard

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor
    property string title: "Inicio"
    property alias flashcardModel: flashcardModel
    property alias addBtn: roundButton

    RoundButton {
        id: roundButton
        x: 250
        y: 523
        width: 70
        height: 70
        text: "+"
        font.pointSize: 13
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 30
        anchors.bottomMargin: 50
    }

    GridView {
        id: gridView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: roundButton.top
        z: 0
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 10
        cellWidth: 170
        cellHeight: 170
        delegate: Card {
            required property string title
            required property string description
            required property int flashcard_id
            required property int index

            cardTitle: title
            cardDescription: description
            cardId: flashcard_id
            cardIndex: index
        }
        model: flashcardModel
    }

    ListModel { id: flashcardModel }
}
