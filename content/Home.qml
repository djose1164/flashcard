import QtQuick 6.2
import QtQuick.Controls 2.15
import QtQuick.Layouts
import "service.js" as Service

HomeForm {
    id: root

    readonly property var emptyCard: {
        "title": "",
        "description": ""
    }

    Component.onCompleted: Service.getFlashcards(r => flashcardModel.append(r.result))

    addBtn.onClicked: newCardPopup.open()

    Popup {
        id: newCardPopup
        width: root.width*.8
        height: root.height/2
        anchors.centerIn: Overlay.overlay
        modal: true

        ColumnLayout {
            anchors.fill: parent
            Card {
                id: card
                Layout.fillWidth: true
            }

            Button {
                Layout.alignment: Qt.AlignHCenter
                text: "Agregar"
                onClicked: {
                    flashcardModel.append(card.card);
                    newCardPopup.close();
                }
            }
        }
    }
}
