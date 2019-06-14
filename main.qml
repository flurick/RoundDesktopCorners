import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import Qt.labs.platform 1.1

Window {
    id: window
    visible: true
    visibility: "FullScreen"
    width: 1920
    height: 1080

    flags: Qt.WindowTransparentForInput | Qt.WindowStaysOnTopHint | Qt.Tool
    color: "#00000000"
    title: "roundscreencorners"


    Image {
        id: tl
        width: 8
        height: 8
        anchors.leftMargin: 0
        anchors.topMargin: 0
        fillMode: Image.Stretch
        source: "images/corner.png"
        rotation: 0
        anchors.top: parent.top
        anchors.left: parent.left

    }
    Image {
        id: tr
        x: 0
        rotation: 90
        width: 8
        height: 8
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        fillMode: Image.Stretch
        source: "images/corner.png"
    }
    Image {
        id: bl
        y: 0
        width: 8
        height: 8
        rotation: -90
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        fillMode: Image.Stretch
        source: "images/corner.png"
    }
    Image {
        id: br
        x: 0
        y: 0
        rotation: 180
        width: 8
        height: 8
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        fillMode: Image.Stretch
        source: "images/corner.png"
    }

    SystemTrayIcon {
        visible: true
        iconSource: "qrc:/images/icon.png"
        onActivated: {
            if (tl.visible) {
                tl.visible = false
                tr.visible = false
                bl.visible = false
                br.visible = false
            } else{
                tl.visible = true
                tr.visible = true
                bl.visible = true
                br.visible = true
            }
        }
        menu: Menu {
            MenuItem {
                text: "Small"
                onTriggered: {
                    var n = 8
                    tr.width = n
                    tr.height = n
                    tl.width = n
                    tl.height = n
                    br.width = n
                    br.height = n
                    bl.width = n
                    bl.width = n
                }
            }
            MenuItem {
                text: "Medium"
                onTriggered: {
                    var n = 16
                    tr.width = n
                    tr.height = n
                    tl.width = n
                    tl.height = n
                    br.width = n
                    br.height = n
                    bl.width = n
                    bl.width = n
                }
            }
            MenuItem {
                text: "Large"
                onTriggered: {
                    var n = 32
                    tr.width = n
                    tr.height = n
                    tl.width = n
                    tl.height = n
                    br.width = n
                    br.height = n
                    bl.width = n
                    bl.width = n
                }
            }
            MenuItem {
                text: qsTr("Close")
                onTriggered: Qt.quit()
            }
            MenuItem {
                text: "Version: 190614"
                onTriggered: Qt.openUrlExternally("http://www.flurick.github.io/")
            }
        }
    }

}
