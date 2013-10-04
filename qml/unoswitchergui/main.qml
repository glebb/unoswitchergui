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
        x: 62
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/united-states-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("USA")
            }
        }
    }

    Image {
        id: finland
        x: 172
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/finland-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("FIN")
            }
        }
    }

    Image {
        id: gbr
        x: 282
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/united-kingdom-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("GBR")
            }
        }
    }

    Image {
        id: canada
        x: 392
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/canada-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("CAN")
            }
        }
    }

    Image {
        id: mexico
        x: 502
        y: 283
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/mexico-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("MEX")
            }
        }
    }

    Image {
        id: denmark
        x: 8
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/denmark-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("DNK")
            }
        }
    }

    Image {
        id: ireland
        x: 118
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/ireland-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("IRL")
            }
        }
    }

    Image {
        id: netherlands
        x: 228
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/netherlands-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("NLD")
            }
        }
    }

    Image {
        id: norway
        x: 338
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/norway-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("NOR")
            }
        }
    }

    Image {
        id: sweden
        x: 448
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/sweden-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("SWE")
            }
        }
    }

    Image {
        id: brazil
        x: 558
        y: 359
        width: 100
        height: 60
        sourceSize.width: 100
        source: "img/brazil-flag-small.gif"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                labelOutput.text = ""
                waitNoteImage.visible = true
                scriptLauncher.launchscript("BRA")
            }
        }
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
