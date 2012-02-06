// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    width: 200; height: 100

    Rectangle {
        id: redRect
        width: 100; height: 100
        color: "red"
    }

    Rectangle {
        id: blueRect
        x: redRect.width
        width: 50; height: 50
        color: "blue"

        states: State {
            name: "reparented"
            ParentChange { target: blueRect; parent: redRect; x: 10; y: 10 }
        }

        transitions: Transition {
            ParentAnimation {
                NumberAnimation { properties: "x,y"; duration: 500 }
            }
        }

        MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
    }
}
