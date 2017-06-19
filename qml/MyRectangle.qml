import QtQuick 2.0
import com.l3t.TestQmlPlugin 1.0

Rectangle {
    border.color: "blue"
    border.width: 2
    color: internalRect.color

    MyInternalRectangle {
        id: internalRect
        anchors.fill: parent
    }
}
