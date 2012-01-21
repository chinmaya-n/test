// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: relay

    signal send( string person, string notice)
    onSend: console.log("Send signal to: " + person + ", " + notice)

    Component.onCompleted: {
        relay.send.connect(sendToPost)
        relay.send.connect(sendToTelegraph)
        relay.send.connect(sendToEmail)
        //relay.send.disconnect() //"not a correct usage" - to remove connected signals
        relay.send("Tom", "Happy Birthday")
    }

    function sendToPost(person, notice) {
        console.log("Sending to post: " + person + ", " + notice)
    }
    function sendToTelegraph(person, notice) {
        console.log("Sending to telegraph: " + person + ", " + notice)
    }
    function sendToEmail(person, notice) {
        console.log("Sending to email: " + person + ", " + notice)
    }
}
