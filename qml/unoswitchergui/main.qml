import QtQuick 2.0
import QtQuick.Controls 1.0

Rectangle {
    width: 670
    height: 500
    color: "#808080"

    Item {
        Connections {
            target: scriptLauncher
            onActionFinished: {
                waitNoteImage.visible = false
                labelOutput.text = output
            }
        }
    }

    Label {
        id: labelOutput
        x: 8
        y: 432
        width: 654
        height: 58
        wrapMode: Text.WordWrap
        text: "Click flag to change netflix country."
    }

    Image {
        id: usa
        objectName: "USA"
        x: 62
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/united-states-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: finland
        objectName: "FIN"
        x: 172
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/finland-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: gbr
        objectName: "GBR"
        x: 282
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/united-kingdom-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: canada
        objectName: "CAN"
        x: 392
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/canada-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: mexico
        objectName: "MEX"
        x: 502
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/mexico-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: denmark
        objectName: "DNK"
        x: 8
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/denmark-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: ireland
        objectName: "IRL"
        x: 118
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/ireland-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: netherlands
        objectName: "NLD"
        x: 228
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/netherlands-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: norway
        objectName: "NOR"
        x: 338
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/norway-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: sweden
        objectName: "SWE"
        x: 448
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/sweden-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: brazil
        objectName: "BRA"
        x: 558
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/brazil-flag-small.gif"
        SwitcherMouseArea {}
    }

    Image {
        id: netflix
        x: 25
        y: 8
        width: 620
        height: 250
        source: "img/netflix.gif"
    }

    Image {
        id: waitNoteImage
        visible: false
        x: 307
        y: 436
        width: 50
        height: 50
        anchors.verticalCenterOffset: 211
        anchors.horizontalCenterOffset: -3
        anchors.centerIn: parent
        source: "img/WaitNote.png"
        NumberAnimation on rotation {
            loops: Animation.Infinite
            from: 0
            to: 360
            duration: 1500 // Define the desired rotation speed.
        }
    }
}
