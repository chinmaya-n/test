// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.0

Rectangle {
    width: 240; height: 320;

    ListView {
        anchors.fill: parent
        model: contactModel
        delegate: Component {
            Text {
                text: modelData.firstName + " " + modelData.lastName
            }
        }
    }
}
