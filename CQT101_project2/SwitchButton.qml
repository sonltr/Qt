import QtQuick 2.0

MouseArea {
    id: root
    property string icon_on: ""
    property string icon_off: ""
    property int status: 0 //0-Off 1-On
    implicitWidth: img.width
    implicitHeight: img.height
    Image {
        id: img
        width: sourceSize.width/3*2
        height:sourceSize.height*2/3
        source: root.status === 0 ? icon_off : icon_on
    }
//    onClicked: {
//        if (root.status == 0){
//            root.status = 1
//        } else {
//            root.status = 0
//        }
//    }
}
