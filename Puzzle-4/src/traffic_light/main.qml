//Stephanie Vetter
//GUI Puzzle4
//4/22/16
import QtQuick 2.6
import QtQuick.Controls 1.5
import Qt.labs.settings 1.0

ApplicationWindow {
    id:window
    visible: true
    width: 640
    height: 480
    title: qsTr("Traffic Light")

    property int index: 0

    Rectangle
    {
        id: big_wrapper
        anchors.fill: parent

        Settings
        {
            id: settings_global
            property alias l_index:window.index
        }

        Rectangle
        {
            id: rect_traffic_light_head
            anchors.horizontalCenter: big_wrapper.horizontalCenter
            anchors.verticalCenter: big_wrapper.verticalCenter

            height: parent.height * .9;
            width: parent.width/3;
            border.color: "brown"

            //transform: Scale{xScale: .3; yScale: .3}

            Rectangle
            {
                id: rect_red_light
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100;
                width: 100;
                radius: width/2;
                border.width: 10
                border.color: "black"
                color: "black"
            }

            Rectangle
            {
                id: rect_yellow_light
                anchors.top: rect_red_light.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100;
                width: 100;
                radius: width/2;
                border.width: 10
                border.color: "black"
                color: "black"
            }

            Rectangle
            {
                id: rect_green_light
                anchors.top: rect_yellow_light.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100;
                width: 100;
                radius: width/2;
                border.color: "black"
                border.width: 10
                color: "black"
            }
            Timer
            {
                id:trafficTimer
                interval: 2000
                running: true
                repeat: true
                onTriggered:
                {
                    TrafficLight.toggle_light(index++);


                    if(TrafficLight.get_light_on(0))
                    {
                        rect_red_light.color = "red"
                        rect_green_light.color = "black"
                    }
                    else if(TrafficLight.get_light_on(1))
                    {
                        rect_yellow_light.color = "yellow"
                        rect_red_light.color = "black"
                    }

                    else if(TrafficLight.get_light_on(2))
                    {
                        rect_green_light.color = "green"
                        rect_yellow_light.color = "black"
                    }

                    if(index > 2)
                        index = 0
                }
            }
        }

    }
}
