import QtQuick 2.0

MouseArea {
    anchors.fill: parent
    onClicked: {
        labelOutput.text = ""
        waitNoteImage.visible = true
        scriptLauncher.launchscript(parent.objectName)
    }
}
