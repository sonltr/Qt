import QtQuick 2.0

MouseArea {
    property string icon_default: ""
    property string icon_pressed: ""
    property string icon_released: ""
    property alias source: img.source
    implicitWidth: img.width
    implicitHeight: img.height
    Image {
        id: img
        width: sourceSize.width/3*2
        height:sourceSize.height*2/3
        source: icon_default
    }
    onPressed: {
        img.source = icon_pressed
    }
    onReleased: {
        img.source = icon_released
    }
}
