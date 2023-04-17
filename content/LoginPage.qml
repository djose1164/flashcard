import QtQuick 6.2
import QtQuick.Controls 2.15
import "service.js" as Service

LoginPageForm {
    readonly property StackView stackView: StackView.view
    readonly property var obj: {"email": email, "password": password};

    loginBtn.onClicked: {
        Service.validateLogin(obj, (r) => {
            if (r.validated)
                stackView.replace("MainPage.qml");
        });
    }
}
