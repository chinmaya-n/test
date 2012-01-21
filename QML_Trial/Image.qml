// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    width: 240
    height: 320

    Image {
        id: img
        source: "./Images/I_Love_You.jpg"
        anchors.fill: parent

        fillMode: Image.PreserveAspectCrop
    }
}
