import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function updateColor() {
        win.color = Qt.rgba(Math.random(), Math.random(), Math.random());
    }

    Button
    {
        text: "Click me"
        anchors.centerIn: parent
        onClicked: {
            updateColor();
        }
    }

    RoundButton {
        id: root
        width: 100
        height: 100
        text: "Yes"
        onClicked: {
            updateColor();
        }
    }

}
