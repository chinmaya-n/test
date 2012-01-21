// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

BorderImage {
    id: borderImg
    source: "Images/I_Love_You.jpg"
    width: 320; height: 320
    border.left: 40; border.top: 20
    border.right: 40; border.bottom: 20
    horizontalTileMode: BorderImage.Stretch
    verticalTileMode: BorderImage.Stretch
    smooth: true
}
