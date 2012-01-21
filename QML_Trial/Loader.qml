// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

//Item  {
//    width: 200; height: 200

//    Loader  {
//        // Explicitly set the size of the Loader to the parent item's size
//        anchors.fill: parent
//        sourceComponent: rect
//    }

//    Component  {
//        id: rect
//        Rectangle  {
//            width: 50
//            height: 50
//            color: "red"
//        }
//    }
//}

//Item  {
//    width: 200; height: 200

//    Loader  {
//        // position the Loader in the center of the parent
//        anchors.centerIn: parent
//        sourceComponent: rect
//    }

//    Component  {
//        id: rect
//        Rectangle  {
//            width: 50
//            height: 50
//            color: "red"
//        }
//    }
//}


import QtQuick 1.0

Item  {
    width: 100; height: 100

    Component  {
        id: redSquare

        Rectangle  {
            color: "red"
            width: 10
            height: 10
        }
    }
    Component {
        id: iluImage

        Image {
//            anchors.fill: parent
//            width: parent.width
//            height: parent.height
            Component.onCompleted: console.log("completed iluImage Generation")
            Component.onDestruction: {
                var i=1
//                while(true) {
//                    i+=i
//                    console.log(i)
//                }
            }

            source: "Images/I_Love_You.jpg"
        }
        ////Component elements may not contain properties other than id

//        onCompleted: console.log("completed iluImage Generation")
//        onDestroyed: console.log("destroing iluImage Generation")
    }

//    Loader  { sourceComponent: redSquare }
//    Loader  { sourceComponent: redSquare; x: 20 }
    Loader {
        sourceComponent: iluImage
    }

    MouseArea {
        anchors.fill: parent
        onClicked: Qt.quit()
    }
}

