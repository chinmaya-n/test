// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5

import QtQuick 1.0

Rectangle
{
    property int i:10
    id:rect
    width: 360
    height: 360
    Text {
        id: txt
        anchors.centerIn: parent
    }
    MouseArea
    {
        id:mouse
        anchors.fill: parent
        onClicked:Sample.getmouseposition()

    }

}
