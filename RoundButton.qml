import QtQuick
import QtQuick.Window
import QtQuick.Controls

Item {
    id: root
    property int size: 100
    property color color: "lightgrey"
    property string text: caption.text

    signal clicked()

    width: size
    height: size

    Rectangle {
        anchors.fill: parent
        radius: size
        color: mouseArea.containsPress ? Qt.darker(root.color, 1.2) : root.color
        Text {
            id: caption
            anchors.centerIn: parent
            text: qsTr("Yes")
        }
        MouseArea{
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                root.clicked()
            }
        }
    }
}
