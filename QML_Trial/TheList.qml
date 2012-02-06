// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    height: 320
    width: 240

    Rectangle {
        width: parent.width
        height: element1.height
        color: "black"
        Text {
            id: element1
            font { family: "Ubuntu Light"; bold: true; pixelSize: 30 }
            text: qsTr("element1")
            color: "#AEA79F"
//            style: Text.Outline
//            styleColor: "white"

            //anchors.centerIn: element1
        }
    }
}
