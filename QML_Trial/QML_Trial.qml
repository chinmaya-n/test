import QtQuick 1.0

Rectangle {
    width: 240
    height: 320
    color: "lightblue"
    Rectangle {
        id: innerRect
        color: "transparent"
        width: parent.width
        height: parent.height
        Image {
            id: innerRectBackground
            source: "Images/3d_Shiva.jpg"
        }
        Text {
            id: message
            anchors.centerIn: parent
            color: "white"
            text: "Hello Shiva"
            wrapMode: Text.NoWrap
            font.family: "Helvatica"; font.pointSize: 15
            Behavior on rotation {
                SmoothedAnimation {
                    velocity: 500
                }
            }
            //onTextChanged {
//                Behavior on text{
//                NumberAnimation {
//                    duration: 1500
//                }
//                }

//                NumberAnimation {
//                    duration: 1000
//                }
            //}
        }
        Item {
            id: myItem
        }

        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.RightButton | Qt.LeftButton
            onClicked: {
                Qt.quit();
            }
            onPressed: {
                if(mouse.button === Qt.RightButton){
                    console.log("RightButton Pressed")
                }
                else
                {
                    console.log("just touched/Left Button Pressed")
                }
            }
        }

        focus: true
        Keys.onLeftPressed: {
            message.rotation += 60
            message.text = "LeftButton Pressed"
        }
        Keys.onRightPressed: {
            message.rotation -= 60
            message.text = "RightButton Pressed"
        }
        Keys.onDownPressed: {
            message.text = "DownButton Pressed"
        }
        Keys.onUpPressed: {
            message.text = "UpButton Pressed"
        }
    }

//    Item {
//        property variant items: [1, 2, 3, "four", "five"]
//        property variant attributes: { 'color': 'red', 'width': 100 }

//        Component.onCompleted: {
//            for (var i=0; i<items.length; i++)
//                console.log(items[i])

//            for (var prop in attributes)
//                console.log(prop, "=", attributes[prop])
//        }
//    }
}
