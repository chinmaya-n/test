// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 240
    height: 320

    Text {
        id: txt
        text: "Yearning"
    }
    TextInput {
        anchors.left: txt.right
        focus: true
        //validator: IntValidator { bottom: 0; top:2000 }
        validator: RegExpValidator { regExp: /.$/ }
    }
    TextEdit {

    }
}
