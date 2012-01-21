// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 240
    height: 320
    color: "skyblue"
    Rectangle {
        width: parent.width/2
        height: parent.height/2
        anchors.centerIn: parent
        color: "black"
    }
}
