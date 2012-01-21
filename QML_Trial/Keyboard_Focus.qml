// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle  {
    id: window
    color: "white"; width: 240; height: 150

    Column  {
        anchors.centerIn: parent; spacing: 15

        MyWidget  {
            focus: true             //set this MyWidget to receive the focus
            color: "lightblue"
        }
        MyWidget  {
            color: "palegreen"
        }
        MyWidget {
            //focus: true
        }
    }
}
