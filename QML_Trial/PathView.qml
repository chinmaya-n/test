// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 240; height: 200

    Component {
        id: delegate
        Column {
            id: wrapper
            Image {
                anchors.horizontalCenter: nameText.horizontalCenter
                width: 64; height: 64
                source: icon
            }
            Text {
                id: nameText
                text: name
                font.pointSize: 16
                color: wrapper.PathView.isCurrentItem ? "red" : "black"
            }
        }
    }

    PathView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: delegate

        path: Path {
            startX: 120; startY: 100
            PathQuad { x: 150; y: 25; controlX: 260; controlY: 75 }
            PathQuad { x: 150; y: 100; controlX: -20; controlY: 75 }
        }

        focus: true
        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
    }
}
