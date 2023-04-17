

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.3

Item {
    id: item1
    property string cardDescription: ""
    property string cardTitle: ""
    property alias titleField: label
    property int cardId
    property alias descriptionField: label1
    property alias tapHandler: tapHandler

    signal deleted
    width: 150
    height: 150

    Pane {
        id: pane
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout
            anchors.fill: parent

            TextField {
                id: label
                text: qsTr(`${cardTitle}`)
                enabled: !cardTitle.length
                placeholderText: "Titulo"
            }

            TextArea {
                id: label1
                text: qsTr(`${cardDescription}`)
                enabled: !cardDescription.length
                placeholderText: "Descripcion"
            }
        }
    }

    TapHandler { id: tapHandler }
}
