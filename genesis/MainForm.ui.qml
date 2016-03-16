import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480
    property alias tableView1: tableView1


    SplitView {
        id: splitView1
        anchors.fill: parent

        CustomerTableView {
            id: tableView1
        }

        TabView {
            id: tabView1
            width: 360
            height: 300

            Tab {
                id: tab1
                source: "Settings.qml"
                title: "Customer Settings"
            }

            Tab {
                id: tab2
                x: -4
                y: 6
                source: "Notes.qml"
                title: "Customer Notes"
            }

            Tab {
                id: tab3
                x: 8
                y: 4
                source: "History.qml"
                title: "Customer History"
            }
        }
    }

}
