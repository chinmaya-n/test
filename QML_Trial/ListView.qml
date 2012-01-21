// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

import "./Scripts/code.js" as Code

ListView {
    snapMode: ListView.SnapToItem

    delegate: Component {
        Text {
            elide: Text.ElideMiddle
            text: "A really, really long string that will require eliding."
            color: Code.defaultColor()
        }
    }
}
