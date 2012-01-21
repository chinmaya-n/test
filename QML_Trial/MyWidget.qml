// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

//Rectangle  {
//    id: widget
//    color: "lightsteelblue"; width: 175; height: 25; radius: 10; smooth: true

//    Text  {
//        id: label; anchors.centerIn: parent
//    }
//    focus: true
//    Keys.onPressed:  {
//        if (event.key == Qt.Key_A)
//            label.text = 'Key A was pressed'
//        else if (event.key == Qt.Key_B)
//            label.text = 'Key B was pressed'
//        else if (event.key == Qt.Key_C)
//            label.text = 'Key C was pressed'
//    }
//}


//FocusScope  {

//    //FocusScope needs to bind to visual properties of the Rectangle
//    property alias color: rectangle.color
//    x: rectangle.x; y: rectangle.y
//    width: rectangle.width; height: rectangle.height

//    Rectangle  {
//        id: rectangle
//        anchors.centerIn: parent
//        color: "lightsteelblue"; width: 175; height: 25; radius: 10; smooth: true
//        Text  { id: label; anchors.centerIn: parent }
//        focus: true
//        Keys.onPressed:  {
//            if (event.key == Qt.Key_A)
//                label.text = 'Key A was pressed'
//            else if (event.key == Qt.Key_B)
//                label.text = 'Key B was pressed'
//            else if (event.key == Qt.Key_C)
//                label.text = 'Key C was pressed'
//        }
//    }
//}


FocusScope  {

    id: scope

    //FocusScope needs to bind to visual properties of the children
    property alias color: rectangle.color
    x: rectangle.x; y: rectangle.y
    width: rectangle.width; height: rectangle.height

    Rectangle  {
        id: rectangle
        anchors.centerIn: parent
        color: "lightsteelblue"; width: 175; height: 25; radius: 10; smooth: true
        Text  { id: label; anchors.centerIn: parent }
        focus: true
        Keys.onPressed:  {
        if (event.key == Qt.Key_A)
        label.text = 'Key A was pressed'
        else if (event.key == Qt.Key_B)
        label.text = 'Key B was pressed'
        else if (event.key == Qt.Key_C)
        label.text = 'Key C was pressed'
        else if (event.key == Qt.Key_Hyper_L)
            label.text = 'Key Hyper-L is pressed'
        else
            label.text = 'Key value: ' + event.key
        }
    }
    MouseArea  { anchors.fill: parent; onClicked:  { scope.focus = true } }
}
