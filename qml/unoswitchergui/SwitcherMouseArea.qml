import QtQuick 2.0

MouseArea {
    anchors.fill: parent
    onClicked: {
        labelOutput.text = ""
        animation.start()
        waitNoteImage.visible = true
        scriptLauncher.launchscript(parent.objectName)
    }
}
