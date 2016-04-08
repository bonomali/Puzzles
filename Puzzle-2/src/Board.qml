// x = second  player
// o = first player

import QtQuick 2.0

Rectangle
{
    property bool game_over: false
    property bool first_player_turn: true
    property variant has_clicked: [false, false, false, false, false, false, false, false, false]
    property int i: 0
    function check_game_over()
    {
        if(img_o1.visible === true && img_o2.visible === true && img_o3.visible === true ||
            img_x1.visible === true && img_x2.visible === true && img_x3.visible === true)
        {
            game_over = true;
        }
        else if(img_o4.visible === true && img_o5.visible === true && img_o6.visible === true ||
            img_x4.visible === true && img_x5.visible === true && img_x6.visible === true)
        {
            game_over = true;
        }
        else if(img_o7.visible === true.visible && img_o8 === true && img_o9.visible === true ||
            img_x7.visible === true && img_x8.visible === true && img_x9.visible === true)
        {
            game_over = true;
        }
        else if(img_o1.visible === true && img_o4.visible === true && img_o7.visible === true ||
            img_x1.visible === true && img_x4.visible === true && img_x7.visible === true)
        {
            game_over = true;
        }
        else if(img_o2.visible === true && img_o5.visible === true && img_o8.visible === true ||
            img_x2.visible === true && img_x5.visible === true && img_x8.visible === true)
        {
            game_over = true;
        }
        else if(img_o3.visible === true && img_o6.visible === true && img_o9.visible === true ||
            img_x3.visible === true && img_x6.visible === true && img_x9.visible === true)
        {
            game_over = true;
        }
        else if(img_o1.visible === true && img_o5.visible === true && img_o9.visible === true ||
            img_x1.visible === true && img_x5.visible === true && img_x9.visible === true)
        {
            game_over = true;
        }
        else if(img_o3.visible === true && img_o5.visible === true && img_o7.visible === true ||
            img_x3.visible === true && img_x5.visible === true && img_x7.visible === true)
        {
            game_over = true;
        }

        if(game_over === true)
        {
            for(i; i < 9; i++)
            {
                has_clicked[i] = true
            }

            txt_game_over.visible = true
        }
    }

    id: big_wrapper
    anchors.fill: parent
    border.color: "white"

    Grid
    {
        id: grd_board
        height: parent.height * .75
        width: parent.width * .75
        anchors.horizontalCenter: big_wrapper.horizontalCenter
        anchors.verticalCenter: big_wrapper.verticalCenter
        columns: 3
        rows: 3

        Rectangle
        {
            id: topLeft
            border.color: "white";
            height: parent.height/3;
            width: parent.width/3;
            Image
            {
                id: img_x1;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                height: 100;
                width: 100;
                source: "../img/letter_x.png";
            }
            Image
            {
                id: img_o1;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                height: 75;
                width: 75;
                source: "../img/letter_o.png";
            }
            MouseArea
            {
                id: mouseArea_1
                anchors.fill: topLeft
                onClicked:
                {
                    if(first_player_turn == true && has_clicked[0] === false)
                    {
                        first_player_turn = false
                        img_o1.visible = true
                        has_clicked[0] = true
                    }
                    else if(has_clicked[0] === false)
                    {
                        first_player_turn = true
                        img_x1.visible = true
                        has_clicked[0] = true
                    }
                    check_game_over()
                }
            }
        }

        Rectangle
        {
            id: midTop
            border.color: "red";
            height: parent.height/3;
            width: parent.width/3;
            Image
            {
                id: img_x2;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                height: 100;
                width: 100;
                source: "../img/letter_x.png";
            }
            Image
            {
                id: img_o2;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                height: 75;
                width: 75;
                source: "../img/letter_o.png";
            }
            MouseArea
            {
                id: mouseArea_2
                anchors.fill: midTop
                onClicked:
                {
                    if(first_player_turn == true && has_clicked[1] === false)
                    {
                        first_player_turn = false
                        img_o2.visible = true
                         has_clicked[1] = true
                    }
                    else if(has_clicked[1] === false)
                    {
                        first_player_turn = true;
                        img_x2.visible = true;
                         has_clicked[1] = true
                    }
                    check_game_over()
                }
            }
        }
        Rectangle{id: rightTop; border.color: "white"; height: parent.height/3; width: parent.width/3; Image{ id: img_x3; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o3; visible:false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_3; anchors.fill: rightTop; onClicked: { if(first_player_turn == true && has_clicked[2] === false) { first_player_turn = false; img_o3.visible = true; has_clicked[2] = true;} else if(has_clicked[2] === false){first_player_turn = true; img_x3.visible = true; has_clicked[2] = true;} check_game_over();}}}
        Rectangle{id: leftMid; border.color: "magenta"; height: parent.height/3; width: parent.width/3;Image{ id: img_x4; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o4; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_4; anchors.fill: leftMid; onClicked: { if(first_player_turn == true && has_clicked[3] === false) { first_player_turn = false; img_o4.visible = true; has_clicked[3] = true;} else if(has_clicked[3] === false){first_player_turn = true; img_x4.visible = true; has_clicked[3] = true;} check_game_over();}}}
        Rectangle{id: midMid; border.color: "gold"; height: parent.height/3; width: parent.width/3;Image{ id: img_x5; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o5; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_5; anchors.fill: midMid; onClicked: { if(first_player_turn == true && has_clicked[4] === false) { first_player_turn = false; img_o5.visible = true; has_clicked[4] = true;} else if(has_clicked[4] === false){first_player_turn = true; img_x5.visible = true; has_clicked[4] = true;} check_game_over();}}}
        Rectangle{id: rightMid; border.color: "green"; height: parent.height/3; width: parent.width/3;Image{ id: img_x6; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o6; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_6; anchors.fill: rightMid; onClicked: { if(first_player_turn == true && has_clicked[5] === false) { first_player_turn = false; img_o6.visible = true; has_clicked[5] = true;} else if(has_clicked[5] === false){first_player_turn = true; img_x6.visible = true; has_clicked[5] = true;} check_game_over();}}}
        Rectangle{id: leftBottom; border.color: "white"; height: parent.height/3; width: parent.width/3;Image{ id: img_x7; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o7; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_7; anchors.fill: leftBottom; onClicked: { if(first_player_turn == true && has_clicked[6] === false) { first_player_turn = false; img_o7.visible = true; has_clicked[6] = true;} else if(has_clicked[6] === false){first_player_turn = true; img_x7.visible = true; has_clicked[6] = true;} check_game_over();}}}
        Rectangle{id: midBottom; border.color: "brown"; height: parent.height/3; width: parent.width/3;Image{ id: img_x8; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o8; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_8; anchors.fill: midBottom; onClicked: { if(first_player_turn == true && has_clicked[7] === false) { first_player_turn = false; img_o8.visible = true; has_clicked[7] = true;} else if(has_clicked[7] === false){first_player_turn = true; img_x8.visible = true; has_clicked[7] = true;} check_game_over();}}}
        Rectangle{id: rightBottom; border.color: "white"; height: parent.height/3; width: parent.width/3;Image{ id: img_x9; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o9; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";} MouseArea{ id: mouseArea_9; anchors.fill: rightBottom; onClicked: { if(first_player_turn == true && has_clicked[8] === false) { first_player_turn = false; img_o9.visible = true; has_clicked[8] = true;} else if(has_clicked[8] === false){first_player_turn = true; img_x9.visible = true; has_clicked[8] = true;} check_game_over();}}}
    }

    Rectangle
    {
        id: rect_left
        anchors.right: grd_board.left
        anchors.rightMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_right
        anchors.left: grd_board.right
        anchors.leftMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_top
        anchors.bottom: grd_board.top
        anchors.bottomMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_bottom
        anchors.top: grd_board.bottom
        anchors.topMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }
    Text
    {
        id: txt_game_over
        visible: false
        font.family: "Arial"
        font.pointSize: 72
        color: "Red"
        text: "Game Over"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
