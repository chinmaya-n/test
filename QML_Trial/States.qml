// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

//Rectangle {
//    id: signal
//    width: 200; height: 200
//    state: "NORMAL"

//    states: [
//        State {
//            name: "NORMAL"
//            PropertyChanges { target: signal; color: "green"}
//            PropertyChanges { target: flag; state: "FLAG_DOWN"}
//        },
//        State {
//            name: "CRITICAL"
//            PropertyChanges { target: signal; color: "red"}
//            PropertyChanges { target: flag; state: "FLAG_UP"}
//        }
//    ]

//    Rectangle {
//        id: signalswitch
//        width: 75; height: 75
//        color: "blue"
//        anchors.centerIn: parent

//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
//                if (signal.state == "NORMAL")
//                    signal.state = "CRITICAL"
//                else
//                    signal.state = "NORMAL"
//            }
//        }
//    }
//}

Rectangle {
    id: outerRect
    height: 320
    width: 240

    state: "NORMAL"
    states: [
        State {
            name: "NORMAL"
            PropertyChanges {
                target: outerRect;
                color: "red";
            }
        },
        State {
            name: "CLICKED"
            PropertyChanges {
                target: outerRect;
                color: "blue";
            }
        }
    ]

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(outerRect.state == "NORMAL")
                outerRect.state = "CLICKED"
            else
                outerRect.state = "NORMAL"
        }
    }
}
