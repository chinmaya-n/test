// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    width: 240
    height: 320

    Column {
        width: parent.width
        height: parent.height
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter

        spacing: 5

        Rectangle {
            id: rect1
            width: parent.width/5
            height: parent.height/4
            radius: 10.0
            color: "red"
            Text {
                anchors.centerIn: parent
                text: rect1.color
            }
        }

        Rectangle {
            id: rect2
            width: parent.width/5
            height: parent.height/4
            radius: 10.0
            color: "skyblue"
            Text {
                anchors.centerIn: parent
                text: rect2.color
            }
            Timer {
                interval: 500; running: true;
                onTriggered: ;
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var tmpColor = rect1.color
                    rect1.color = rect2.color
                    rect2.color = tmpColor;
                    //Timer::start();
//                    rect1.color = "skyblue"
                    if(rect2.color == "#87ceeb") {
                        rect2.color = "black"
                    }
                    else
                        rect2.color = "skyblue"
                }
            }
        }
    }

//    Grid {
//        width: parent.width
//        height: parent.height/2
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        columns: 2
//        rows: 4
//        spacing: 5

//        Rectangle {
//            border.color: "red"
//            width: parent.width/2
//            height: parent.height/4
//            color: "pink"
//            ColorAnimation on color { from: "white"; to: "black"; duration: 1200 }
//            MouseArea{
//                anchors.fill: parent
//                //onClicked: ColorAnimation { from: "pink"; to: "black"; duration: 1500 }
//            }
//        }

//        Rectangle {
//            border.color: "red"
//            width: parent.width/2
//            height: parent.height/4
//            color: "gray"
//            ColorAnimation on color { to: "white"; from: "black"; duration: 1200 }
//            MouseArea{
//                anchors.fill: parent
//                //onClicked: ColorAnimation { from: "pink"; to: "black"; duration: 1500 }
//            }
//        }

//        Rectangle {
//            border.color: "red"
//            width: parent.width/2
//            height: parent.height/4
//            color: "gray"
//            ColorAnimation on color { to: "white"; from: "black"; duration: 1200 }
//            MouseArea{
//                anchors.fill: parent
//                //onClicked: ColorAnimation { from: "pink"; to: "black"; duration: 1500 }
//            }
//        }

//        Rectangle {
//            border.color: "red"
//            width: parent.width/2
//            height: parent.height/4
//            color: "pink"
//            ColorAnimation on color { from: "white"; to: "black"; duration: 1200 }
//            MouseArea{
//                anchors.fill: parent
//                //onClicked: ColorAnimation { from: "pink"; to: "black"; duration: 1500 }
//            }
//        }
//    }

//    Grid {
//             x: 5; y: 5
//             rows: 5; columns: 5; spacing: 5
//             width: parent.width; height: parent.height
//             //anchors.horizontalCenter: parent.horizontalCenter

//             Repeater { model: 24
//                        Rectangle { width: parent.width/6; height: parent.height/6
//                                    color: "lightgreen"

//                                    Text { text: index
//                                           font.pointSize: 30
//                                           anchors.centerIn: parent } }
//             }
//         }
}
