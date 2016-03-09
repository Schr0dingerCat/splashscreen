import QtQuick 2.0

Item {
    id: splash
    anchors.fill: parent

    property int timeoutInterval: 2000
    signal timeout

    Image {
        id: splashImage
        anchors.fill: parent
        source: "images/splash.jpg"
    }

    Timer {
        interval: timeoutInterval; running: true; repeat: false
        onTriggered: {
            visible = false
            splash.timeout()
        }
    }
}
