// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
//import QtQuick 1.1

//Rectangle {
//    width: animationImg.width; height: animationImg.height + 10

//    AnimatedImage {
//        id: animationImg
//        source: "./Images/ExampleAnimation.gif"
//    }

//    Rectangle {
//        width: 5
//        height: 10
//        //property int frames:
//        x: (animationImg.width - width) * animationImg.currentFrame / animationImg.frameCount
//        y: animationImg.height
//        color: "red"
//    }
//}

import QtQuick 1.1

 Rectangle {
     width: animation.width; height: animation.height + 10
     property int xx;

     AnimatedImage {
         id: animation;
         source: "Images/ExampleAnimation.gif"
         onCurrentFrameChanged: {
               xx = (animation.width-status.width) * (animation.currentFrame/animation.frameCount)
         }
     }

     Rectangle {
         id: status
         //property int frames: animation.frameCount
         width: 4; height: 10
         x:  parent.xx
         y: animation.height

         color: "red"
     }

     MouseArea {
         anchors.fill: parent
         onClicked: {
             console.log((animation.width-status.width) * animation.currentFrame/animation.frameCount)
             console.log(status.x, animation.frames)
//             if(animation.playing)
//                 animation.paused = true
//             else
//                 animation.playing = true
         }
     }
 }
