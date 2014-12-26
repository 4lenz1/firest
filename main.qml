import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
ApplicationWindow {
    id: window
    title: qsTr("Hello World")
    visible: true
    signal qmlSignal(string msg)
    signal startRecord(bool start)
    signal qmlTag(bool tag)


    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }
    MainForm {
        anchors.fill: parent
        //button4.onClicked :item.qmlSignal("HELLO QML !!")
//        button1.onClicked: {window.qmlSignal("Btn1 Clicked")
//            messageDialog.show(qsTr("Button 1 pressed"))
//        }

        // Start or Stop Recording
//        btnStartClick.onClicked: {
//            qmlSignal("Record Button clicked")
//            startRecord(true)
//            audioWave.y= 0

//        }

        btnStartClick{
            onClicked: {
            if(btnStart.color == "#ff0000"){
                btnStart.color = "orange"
                btnStop.visible = true
            }else{
                btnStart.color = "red"
                btnStop.visible = false
            }
            qmlSignal("Record Button clicked")
            startRecord(true)
            }
        }

        btnTagClick.onClicked: {
            qmlSignal("Tag button clicked")
            qmlTag(true);
        }

        audioWave{
            //Behavior on y { NumberAnimation { duration: 1000}}
        }

//        black{
//            x: mirror(10)
//            function mirror(value) {
//                return LayoutMirroring.enabled ? (parent.width - width - value) : value;
//            }
//        }

    }
    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
