// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "./Scripts/code.js" as Code

Item {
    id: layoutRandom
    width: 240
    height: 320

//    Flow {
//        anchors.fill: parent
//        anchors.margins: 4
//        spacing: 10


//    }

    Column {
        //anchors.horizontalCenter: parent.horizontalCenter
        //anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        width: parent.width;
        height: parent.height;

        spacing: 15

        Repeater {
            model: Code.random()
            width: parent.width
            height: parent.height

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width;
                height: parent.height;
                spacing: 5

                Repeater {
                    id: repeaterX
                    model: Code.random();

                    Rectangle {
                        width: parent.width/repeaterX.model
                        height: parent.height/5
                        radius: 10.0
                        color: "blue"
                    }
                }
            }
        }

//        Row {
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
//            width: parent.width;
//            height: parent.height;
//            spacing: 5

//            Repeater {
//                id: repeaterX
//                model: Code.random();

//                Rectangle {
//                    width: parent.width/repeaterX.model
//                    height: parent.height/5
//                    radius: 10.0
//                    color: "blue"
//                }
//            }
//        }

//        Row {
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
//            width: parent.width;
//            height: parent.height;
//            spacing: 5

//            Repeater {
//                id: repeaterY
//                model: Code.random();

//                Rectangle {
//                    width: parent.width/repeaterY.model
//                    height: parent.height/5
//                    radius: 10.0
//                    color: "red"
//                }
//            }
//        }

//        Row {
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
//            width: parent.width;
//            height: parent.height;
//            spacing: 5

//            Repeater {
//                id: repeaterZ
//                model: Code.random();

//                Rectangle {
//                    width: parent.width/repeaterZ.model
//                    height: parent.height/5
//                    radius: 10.0
//                    color: "black"
//                }
//            }
//        }
    }
}
