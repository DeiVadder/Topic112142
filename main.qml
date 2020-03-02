import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int slideIndex: 0
    onSlideIndexChanged: if(slideIndex >= 20)timer.stop()

    Timer{
        id: timer
        running: true
        repeat: true
        interval: 5000
        onTriggered: slideIndex++
    }

    Image{
        anchors.centerIn: parent
        width: Math.min(parent.width, parent.height)
        height: width

        fillMode: Image.PreserveAspectFit

        source: {
            switch(slideIndex){
            case 0: return "https://webstockreview.net/images600_/number-1-clipart-bold-1.png"
            case 1: return "https://blognumbers.files.wordpress.com/2010/09/2.jpg?w=231&h=300";
//            case 2: ....
            default: return "https://acadianakarate.com/wp-content/uploads/2017/04/default-image.jpg"
            }
        }
    }
}
