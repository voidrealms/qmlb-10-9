import QtQuick 2.12
import QtQuick.Window 2.12

//Inline javascript

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id: root

    Rectangle {
        id: box
        color: area.pressed ? "orange" : "gray" //Javascript property binding
        width: 100
        height: 100
        x: 0
        y: (parent.height / 2) - (height /2)

        MouseArea {
            id: area
            anchors.fill: parent

            onClicked: {
                //Javascript in a signal handler
                print("Javascript in signal handler!")
                var max = root.width - box.width
                box.x = (box.x == 0) ? max : 0
            }

        }
    }

}
