import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1



Item {
    id: item1
    //property alias button1: button1
    property alias btnStartClick: btnStartClick
    property alias btnStart: btnStart
    property alias btnTagClick: btnTagClick
    property alias btnTag: btnTag
    property alias audioWave: audioWave
    property alias btnStop : btnStop
    property alias btnStopClick: btnStopClick
    antialiasing: true
//    property alias black: black
    RowLayout {
        LayoutMirroring.enabled: true
        LayoutMirroring.childrenInherit: true
        id: rowLayout1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent


    }

//    Button {
//        id: button1
//        text: qsTr("Press Me 1")
//        anchors.top: parent.top
//        anchors.topMargin: 0
//        anchors.right: parent.right
//        anchors.rightMargin: 0
//    }
//Rectangle{
//   anchors.verticalCenter: btnStart.top
//   anchors.horizontalCenter: parent.horizontalCenter
//    color: black
//    id:mirrorRect
//    width: 100
//    height: 50
//    LayoutMirroring.enabled:true
//    LayoutMirroring.childrenInherit: true
//    Row{
//        spacing: 5
//        Repeater{
//            model : 2
//            Rectangle {
//                id: testRect

//                //anchors.verticalCenter: btnStart.verticalCenter
//                //anchors.verticalCenter: btnStart.top
//                width: btnStart.width * .1
//                height: 2
//                color: "skyblue"
//                opacity: .7
//                smooth: true
//            }
//        }
//    }
//}

    Rectangle {
        id: audioWave
        //anchors.verticalCenter: btnStart.verticalCenter
        anchors.verticalCenter: btnStart.top
        anchors.horizontalCenter: btnStart.horizontalCenter
        width: btnStart.width * .1
        height: 2
        color: "#77c6e8"
        opacity: .7
        smooth: true
    }

//    Rectangle {
//        id: audioWaveLeft
//        //anchors.verticalCenter: btnStart.verticalCenter
//        anchors.verticalCenter: btnStart.top
//        x:audioWaveRight.x - 10
//        width: audioWaveRight.width
//        height: audioWaveRight.height
//        color: audioWaveRight.color
//        antialiasing: true
//        transformOrigin: Item.Center
//        opacity: .7
//        smooth: true
//    }

//    Rectangle {
//        id:black
//        color: "black"
//        height: 50; width: 50
//    }

Rectangle {
    id:btnTag
    anchors.verticalCenter: btnStart.bottom
    anchors.left: parent.left
    anchors.leftMargin:  parent.width *.1
    color:  "skyblue"
    opacity:  btnTagClick.pressed ?  .5 : .7
    width: parent.width / 7
    height: width
    radius:  width * .5
    smooth: true

    MouseArea{
        id:btnTagClick
        anchors.fill: parent
    }
}

Rectangle {
    id: btnStart
    radius: width * .5
            antialiasing: true
            smooth: true
            width:  parent.width / 3
            height:  width
            color: "red"
            opacity: btnStartClick.pressed ? .5 : .7
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * ( 1 / 6 )
            MouseArea {
                id: btnStartClick
                anchors.fill : parent
            }
}

Rectangle {
    id: btnStop
    width: btnTag.width
    height: btnTag.height
    color: "blue"
    antialiasing: true
    radius: 10
    visible: false
    opacity: btnStopClick.pressed ? .5 : .7
    anchors.verticalCenter: btnStart.bottom
    anchors.right: parent.right
    anchors.rightMargin:  parent.width *.1
    MouseArea {
        id: btnStopClick
        anchors.fill: parent
    }
}
}
