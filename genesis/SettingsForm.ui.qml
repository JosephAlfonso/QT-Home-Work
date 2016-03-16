import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.2

Item {
    id: content
    width: 400
    height: 400
    property alias cancel: cancel
    property alias save: save
    property alias title: title
    property alias gridLayout1: gridLayout1
    property alias rowLayout1: rowLayout1
    property alias firstName: firstName
    property alias lastName: lastName
    property alias customerId: customerId

    GridLayout {
        id: gridLayout1
        height: 100
        columnSpacing: 8
        rowSpacing: 8
        rows: 4
        columns: 3
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.top: parent.top
        anchors.topMargin: 12

        Label {
            id: label1
            text: qsTr("Title")
        }

        Label {
            id: label2
            text: qsTr("First Name")
        }

        Label {
            id: label3
            text: qsTr("Last Name")
        }


        ComboBox {
            id: title
            Layout.fillWidth: true
        }


        TextField {
            id: firstName
            Layout.fillWidth: true
            placeholderText: qsTr("Text Field")
        }


        TextField {
            id: lastName
            Layout.fillWidth: true
            placeholderText: qsTr("Text Field")
        }


        Label {
            id: label4
            text: qsTr("Customer Id")
            Layout.fillWidth: true
            Layout.columnSpan: 3
        }

        TextField {
            id: customerId
            placeholderText: qsTr("Text Field")
        }
    }

    RowLayout {
        id: rowLayout1
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 12

        Button {
            id: save
            text: qsTr("Save")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: cancel
            text: qsTr("Cancel")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }

}
