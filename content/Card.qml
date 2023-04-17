import QtQuick 2.15
import "service.js" as Service

CardForm {
    id: root
    property int flashcard_id
    property int cardIndex
    readonly property var card: {
        "title": titleField.text,
        "description": descriptionField.text
    }

    signal cardEdited

    titleField.onTextEdited: cardEdited()
    descriptionField.onTextChanged: cardEdited()

    tapHandler.onLongPressed: deleted()

    onDeleted: {
        Service.deleteCard(cardId);
        flashcardModel.remove(cardIndex)
    }
}
