import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtMultimedia
import com.company.slot_machine 1.0
//import slot_qt 1.0
//instructions window
//hold to spin, trigger getrandom
//doublings for combinations(what are the requirements, how much can you double
//deploy on space, and on phone

Window {//main window,eg full window
    id:mainn
    width: 1600
    height: 900
    visible: true
    color:"black"//black
    title: qsTr("slot_machine")
            //top text
                Text{text:"5 Lines Slot Machine"//+SlotMachine.highl
                    font.family:"Helvetica"
                    font.pointSize:0.02*mainn.width

                    color:"white"
                    anchors.top:parent.top
                    anchors.topMargin: 0.019*mainn.height
                    anchors.bottom:reels.top
                   // minimumPointSize: 10

                    anchors.horizontalCenter:parent.horizontalCenter
                }
                //bottom text
                Text{id:bottm_text
                    text:"Not enough credits!"
                    anchors.horizontalCenter:parent.horizontalCenter
                    font.pointSize:0.015*mainn.width
                    color:"white"
                    anchors.top:reels.bottom
                    anchors.topMargin: 0.099*mainn.height
                visible:false

                }

                property var infoWindow:null;
                function createInfoWindow(){
                    if (infoWindow==null){
                    var component=Qt.createComponent("InfoPage.qml")
                    infoWindow=component.createObject(reels)
                    if (infoWindow!==null)
                    {
                       // infoWindow.anchors.horizontalCenter=mainn.horizontalCenter
                        //infoWindow.anchors.too=mainn.top
                        //infoWindow.anchors.topMargin=(-infoWindow.height+mainn.height)/3
                        infoWindow.hideButton.connect(destroyInfoWindow)
                    }

                }
                        }
                function destroyInfoWindow()
                {
                    if (infoWindow!==null)
                    {
                        infoWindow.destroy()
                        infoWindow=null;
                    }
                }
                property var doubleWindow:null;
                function createDoubleWindow(){
                    if (doubleWindow==null){
                    var component=Qt.createComponent("doublepage.qml")
                    doubleWindow=component.createObject(reels)
                    if (doubleWindow!==null)
                    {
                       // infoWindow.anchors.horizontalCenter=mainn.horizontalCenter
                        //infoWindow.anchors.too=mainn.top
                        //infoWindow.anchors.topMargin=(-infoWindow.height+mainn.height)/3
                        doubleWindow.hideButton2.connect(destroyDoubleWindow)
                    }

                }
                        }
                function destroyDoubleWindow()
                {
                    if (doubleWindow!==null)
                    {
                        doubleWindow.destroy()
                        doubleWindow=null;
                    }
                }


                Rectangle{//spinning reels
                    id:reels
                    width:Window.width*0.6
                    height:Window.height*0.65
                    color:"cyan"
                    anchors.horizontalCenter: parent.horizontalCenter
                            anchors.top: parent.top
                            anchors.topMargin: (-height+parent.height)/3


                            Rectangle{
                                id:borderreels
                                anchors.horizontalCenter:parent.horizontalCenter
                                width:parent.width+5
                                height:parent.height+5
                                color:"red"



                            }
                                                                                         //when the signal says the image is winning, activate the image bott and up margins and the color cyan in the rect

                        Blue_blackborder{
                            id:reel1
                            height:parent.height
                                    anchors.left:parent.left
                                    width:parent.width/5

                                    Rectangle{
                                        id:r00
                                        anchors.horizontalCenter:parent.horizontalCenter
                                        height:parent.height/3
                                        width:parent.width
                                        anchors.top:parent.top


                                        color: flash ? "cyan" : "black"
                                         property bool flash: false


                                        Image{id:img0
                                            anchors.fill: parent
                                            anchors.leftMargin:  5
                                            anchors.rightMargin: 5
                                            anchors.bottomMargin: SlotMachine.highl[0] ? 5:0
                                            anchors.topMargin: SlotMachine.highl[0] ? 5:0
                                     source: SlotMachine.getImagePath(SlotMachine.a[0])
                                        }


                                        Timer {
                                                        id: flashTimer0
                                                        interval: 500
                                                        running: false

                                                        repeat: true
                                                        onTriggered: {
                                                            r00.flash = !r00.flash
                                                        }
                                                    }

                                        Connections {
                                                target: SlotMachine
                                                function onHighlChanged() {
                                                    if (SlotMachine.highl[0] === 1) {
                                                        r00.flash = true;
                                                        flashTimer0.start();
                                                    } else {
                                                        r00.flash = false;
                                                        flashTimer0.stop();
                                                    }
                                                }
                                            }




                                    }
                                    Rectangle{
                                        id:r10
                                        anchors.horizontalCenter:parent.horizontalCenter
                                        height:parent.height/3
                                        width:parent.width
                                        anchors.top:r00.bottom
                                        color: flash ? "cyan" : "black"
                                         property bool flash: false

                                        Image{id:img1
                                            anchors.fill: parent
                                            anchors.leftMargin: 5
                                            anchors.rightMargin: 5
                                            anchors.bottomMargin: SlotMachine.highl[5] ? 5:0
                                            anchors.topMargin: SlotMachine.highl[5] ? 5:0
                                     source: SlotMachine.getImagePath(SlotMachine.a[5])
                                        }
                                        Timer {
                                                        id: flashTimer5
                                                        interval: 500
                                                        running: false

                                                        repeat: true
                                                        onTriggered: {
                                                            r10.flash = !r10.flash
                                                        }
                                                    }

                                        Connections {
                                                target: SlotMachine
                                                function onHighlChanged() {
                                                    if (SlotMachine.highl[5] === 1) {
                                                        r10.flash = true;
                                                        flashTimer5.start();
                                                    } else {
                                                        r10.flash = false;
                                                        flashTimer5.stop();
                                                    }
                                                }
                                            }

                                    }
                                    Rectangle{
                                        id:r20
                                        anchors.horizontalCenter:parent.horizontalCenter
                                        height:parent.height/3
                                        width:parent.width
                                        anchors.top:r10.bottom
                                        color: flash ? "cyan" : "black"
                                         property bool flash: false
                                        Image{id:img2
                                            anchors.bottomMargin: SlotMachine.highl[10] ? 5:0
                                            anchors.topMargin: SlotMachine.highl[10] ? 5:0
                                            anchors.fill: parent
                                            anchors.leftMargin: 5
                                            anchors.rightMargin: 5
                                     source: SlotMachine.getImagePath(SlotMachine.a[10])
                                        }
                                        Timer {
                                                        id: flashTimer10
                                                        interval: 500
                                                        running: false

                                                        repeat: true
                                                        onTriggered: {
                                                            r20.flash = !r20.flash
                                                        }
                                                    }

                                        Connections {
                                                target: SlotMachine
                                                function onHighlChanged() {
                                                    if (SlotMachine.highl[10] === 1) {
                                                        r20.flash = true;
                                                        flashTimer10.start();
                                                    } else {
                                                        r20.flash = false;
                                                        flashTimer10.stop();
                                                    }
                                                }
                                            }

                                    }

                        }
                        Blue_blackborder{
                            id:reel2
                            height:parent.height
                            anchors.left:reel1.right
                            width:parent.width/5
                            Rectangle{
                                id:r01
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:parent.top
                                color: flash ? "cyan" : "black"
                                 property bool flash: false

                                Image{id:img3
                                    anchors.fill: parent
                                    anchors.bottomMargin: SlotMachine.highl[1] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[1] ? 5:0
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                             source: SlotMachine.getImagePath(SlotMachine.a[1])
                                }
                                Timer {
                                                id: flashTimer1
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r01.flash = !r01.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[1] === 1) {
                                                r01.flash = true;
                                                flashTimer1.start();
                                            } else {
                                                r01.flash = false;
                                                flashTimer1.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r11
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r01.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img4
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[6] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[6] ? 5:0
                                    anchors.rightMargin: 5
                             source: SlotMachine.getImagePath(SlotMachine.a[6])
                                }
                                Timer {
                                                id: flashTimer6
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r11.flash = !r11.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[6] === 1) {
                                                r11.flash = true;
                                                flashTimer6.start();
                                            } else {
                                                r11.flash = false;
                                                flashTimer6.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r21
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r11.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false


                                Image{id:img5
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[11] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[11] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[11])
                                }

                            }
                            Timer {
                                            id: flashTimer11
                                            interval: 500
                                            running: false

                                            repeat: true
                                            onTriggered: {
                                                r21.flash = !r21.flash
                                            }
                                        }

                            Connections {
                                    target: SlotMachine
                                    function onHighlChanged() {
                                        if (SlotMachine.highl[11] === 1) {
                                            r21.flash = true;
                                            flashTimer11.start();
                                        } else {
                                            r21.flash = false;
                                            flashTimer11.stop();
                                        }
                                    }
                                }
                        }


                        Blue_blackborder{
                            id:reel3
                            height:parent.height
                            anchors.left:reel2.right
                            width:parent.width/5
                            Rectangle{
                                id:r02
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:parent.top
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img6
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[2] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[2] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[2])
                                }
                                Timer {
                                                id: flashTimer2
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r02.flash = !r02.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[2] === 1) {
                                                r02.flash = true;
                                                flashTimer2.start();
                                            } else {
                                                r02.flash = false;
                                                flashTimer2.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r12
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r02.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img7
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[7] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[7] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[7])
                                }
                                Timer {
                                                id: flashTimer7
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r12.flash = !r12.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[7] === 1) {
                                                r12.flash = true;
                                                flashTimer7.start();
                                            } else {
                                                r12.flash = false;
                                                flashTimer7.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r22
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r12.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img8
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[12] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[12] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[12])
                                }
                                Timer {
                                                id: flashTimer12
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r22.flash = !r22.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[12] === 1) {
                                                r22.flash = true;
                                                flashTimer12.start();
                                            } else {
                                                r22.flash = false;
                                                flashTimer12.stop();
                                            }
                                        }
                                    }

                            }
                        }
                        Blue_blackborder{
                            id:reel4
                            height:parent.height
                            anchors.left:reel3.right
                            width:parent.width/5
                            Rectangle{
                                id:r03
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:parent.top
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img9
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[3] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[3] ? 5:0
                                    anchors.rightMargin: 5
                             source: SlotMachine.getImagePath(SlotMachine.a[3])
                                }
                                Timer {
                                                id: flashTimer3
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r03.flash = !r03.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[3] === 1) {
                                                r03.flash = true;
                                                flashTimer3.start();
                                            } else {
                                                r03.flash = false;
                                                flashTimer3.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r13
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r03.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img10
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[8] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[8] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[8])
                                }
                                Timer {
                                                id: flashTimer8
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r13.flash = !r13.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[8] === 1) {
                                                r13.flash = true;
                                                flashTimer8.start();
                                            } else {
                                                r13.flash = false;
                                                flashTimer8.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r23
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r13.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img11
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[13] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[13] ? 5:0
                                    anchors.rightMargin: 5
                             source: SlotMachine.getImagePath(SlotMachine.a[13])
                                }
                                Timer {
                                                id: flashTimer13
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r23.flash = !r23.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[13] === 1) {
                                                r23.flash = true;
                                                flashTimer13.start();
                                            } else {
                                                r23.flash = false;
                                                flashTimer13.stop();
                                            }
                                        }
                                    }

                            }
                        }
                        Blue_blackborder{
                            id:reel5
                            height:parent.height
                            anchors.left:reel4.right
                            width:parent.width/5
                            Rectangle{
                                id:r04
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:parent.top
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img12
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[4] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[4] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[4])
                                }
                                Timer {
                                                id: flashTimer4
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r04.flash = !r04.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[4] === 1) {
                                                r04.flash = true;
                                                flashTimer4.start();
                                            } else {
                                                r04.flash = false;
                                                flashTimer4.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r14
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r04.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img13
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[9] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[9] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[9])
                                }
                                Timer {
                                                id: flashTimer9
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r14.flash = !r14.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[9] === 1) {
                                                r14.flash = true;
                                                flashTimer9.start();
                                            } else {
                                                r14.flash = false;
                                                flashTimer9.stop();
                                            }
                                        }
                                    }

                            }
                            Rectangle{
                                id:r24
                                anchors.horizontalCenter:parent.horizontalCenter
                                height:parent.height/3
                                width:parent.width
                                anchors.top:r14.bottom
                                color: flash ? "cyan" : "black"
                                 property bool flash: false
                                Image{id:img14
                                    anchors.fill: parent
                                    anchors.leftMargin: 5
                                    anchors.rightMargin: 5
                                    anchors.bottomMargin: SlotMachine.highl[14] ? 5:0
                                    anchors.topMargin: SlotMachine.highl[14] ? 5:0
                             source: SlotMachine.getImagePath(SlotMachine.a[14])
                                }
                                Timer {
                                                id: flashTimer14
                                                interval: 500
                                                running: false

                                                repeat: true
                                                onTriggered: {
                                                    r24.flash = !r24.flash
                                                }
                                            }

                                Connections {
                                        target: SlotMachine
                                        function onHighlChanged() {
                                            if (SlotMachine.highl[14] === 1) {
                                                r24.flash = true;
                                                flashTimer14.start();
                                            } else {
                                                r24.flash = false;
                                                flashTimer14.stop();
                                            }
                                        }
                                    }

                            }
                        }


                        //play button

                        Rectangle {
                            property bool isPressed: false//checks if the button is currently pressed
                            property bool ishold: false//checks if the button is being held
                            property bool wingot:false//required to check if a win happened and the behaviour of the button changes
                            id: princ
                            width:buttonArea.containsMouse ? parent.height /7 : parent.height /8
                            height: buttonArea.containsMouse ? parent.height /9 : parent.height /10
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.top: parent.bottom
                            anchors.topMargin: 10
                            focus:true
                            function playspinsound() {
                                        spinsound.play();
                                    }
                            function playwinsound() {
                                        winsound.play();
                                    }
                            function stopwinsound() {
                                        winsound.stop();
                                    }


                            function startspin()
                            {   if (!princ.wingot)
                                {if (SlotMachine.canPlaceBet())
                                {if (!princ.isPressed) { // Ensure action is taken only when the button is enabled
                                    SlotMachine.substractBet(); //substract bet
                                    princ.isPressed = true;
                                    pressTimer.start(); // timer that spins all reels
                                    imaginea.source = "images/stopp.png"; // Change the image to stopp
                                    SlotMachine.resetsquares(); //reset the winning squares
                                      reel1Timer.start(); //timers for all reels to start
                                        reel2Timer.start();
                                        reel3Timer.start();
                                          reel4Timer.start();
                                        reel5Timer.start();
                                       // doubleup.isvisible=false;
                                        princ.playspinsound(); //start spinning sound
                                        princ.stopwinsound();  //stop last wins sounds
                                            spinsound.playbackRate=1;


                                }}
                                else
                                {
                                    bottm_text.visible=true;//no more credits left
                                    opacityAnimation.start();

                                 }}
                                    else
                                {   imaginea.source="images/playy.png" //re-enable the play button
                                    SlotMachine.sum+=SlotMachine.sumwon//add the calculated sum
                                    princ.wingot=false;
                                    doubleup.isvisible=false
                                }



                            }


                            SequentialAnimation {
                                 id: opacityAnimation
                                 NumberAnimation {
                                     target: bottm_text
                                     property: "opacity"
                                     from: 1.0
                                     to: 0.0
                                     duration: 1000
                                 }
                                 ScriptAction {
                                     script: bottm_text.visible = false
                                 }
                             }

                            Image {
                                id: imaginea
                                source: "images/playy.png"
                                anchors.fill: parent
                            }


                            MouseArea
                        {
                                id: buttonArea
                                hoverEnabled: true
                                anchors.fill: parent
                                enabled: !princ.isPressed // Disable MouseArea when isPressed is true
                               //press and hold commands

                                onClicked: {
                                   princ.startspin() }
                                    onPressAndHold: {
                                        holdTimer.start();
                                        princ.ishold=true;

                                    }
                                    onReleased: {
                                         princ.isPressed = false;
                                        princ.ishold=false;
                                        imaginea.source = "images/playy.png";
                                        holdTimer.stop();
                                        SlotMachine.resetsquares(); //reset the winning squares

                                    }
                        }


                            //MultiPointTouchArea {
                                    //id: touchArea
                                    //anchors.fill: parent
                                    //enabled: !princ.isPressed
                                    //onPressed: {
                                  //      princ.startspin();
                                //    }
                              //  }

                            Keys.onSpacePressed: {
                                princ.startspin();
                                    }



                            Timer {
                                id: pressTimer
                                interval: 300 // 300 mseconds
                                repeat: false

                                onTriggered: {
                                    stopReel1Timer.start(); // Start stopping the reels sequentially



                           }}
                            Timer {
                                id: holdTimer
                                interval:1000 // 300 mseconds
                                repeat: princ.ishold

                                onTriggered: {//doubleup.isvisible=false ill check later
                                    SlotMachine.resetsquares(); //reset the winning squares
                                    princ.stopwinsound();
                                    if (SlotMachine.canPlaceBet()) {
                                        spinsound.playbackRate=2;

                                                princ.playspinsound();

                                                     SlotMachine.randomfind(SlotMachine.ireel1,SlotMachine.ireel2,SlotMachine.ireel3,SlotMachine.ireel4,SlotMachine.ireel5)//generate the symbols
                                                     SlotMachine.substractBet();
                                                     imaginea.source = "images/stopp.png";
                                       SlotMachine.calcwins(SlotMachine.a,SlotMachine.winscomb,SlotMachine.scatter,SlotMachine.sumwon);
                            SlotMachine.lastwincalc();
                            SlotMachine.calcsquares();

                                        Connections
                                        {
                                            target:SlotMachine
                                            if (SlotMachine.sumwon!==0)
                                            {princ.playwinsound();
                                               // doubleup.isvisible=true ill check later
                                            }

                                        }

                                             } else {
                                                 bottm_text.visible = true;
                                                 opacityAnimation.start();
                                             }


                           }}



                            Timer {
                                            id: reel1Timer
                                            interval: 20
                                            repeat: true
                                            running: false
                                            onTriggered: {
                                                SlotMachine.delayimages(1);
                                            }
                                        }

                                        Timer {
                                            id: reel2Timer
                                            interval: 20
                                            repeat: true
                                            running: false
                                            onTriggered: {
                                                SlotMachine.delayimages(2);
                                            }
                                        }

                                        Timer {
                                            id: reel3Timer
                                            interval: 20
                                            repeat: true
                                            running: false
                                            onTriggered: {
                                                SlotMachine.delayimages(3);
                                            }
                                        }

                                        Timer {
                                            id: reel4Timer
                                            interval: 20
                                            repeat: true
                                            running: false
                                            onTriggered: {
                                                SlotMachine.delayimages(4);
                                            }
                                        }

                                        Timer {
                                            id: reel5Timer
                                            interval: 20
                                            repeat: true
                                            running: false
                                            onTriggered: {
                                                SlotMachine.delayimages(5);
                                            }
                                        }

                                        Timer {
                                            id: stopReel1Timer
                                            interval: 300
                                            repeat: false
                                            running: false
                                            onTriggered: {
                                                reel1Timer.stop(); // Stop the first reel

                                                SlotMachine.getreels(0);//function to get the symbols of the first reel
                                                stopReel2Timer.start();
                                            }
                                        }

                                        Timer {
                                            id: stopReel2Timer
                                            interval: 300
                                            repeat: false
                                            running: false
                                            onTriggered: {
                                                reel2Timer.stop(); // Stop the second reel
                                                stopReel3Timer.start(); // Start the timer for the third reel
                                                SlotMachine.getreels(1);

                                            }
                                        }

                                        Timer {
                                            id: stopReel3Timer
                                            interval: 300
                                            repeat: false
                                            running: false
                                            onTriggered: {
                                                reel3Timer.stop();
                                                stopReel4Timer.start();
                                                SlotMachine.getreels(2);

                                            }
                                        }

                                        Timer {
                                            id: stopReel4Timer
                                            interval: 300
                                            repeat: false
                                            running: false
                                            onTriggered: {
                                                reel4Timer.stop();
                                                stopReel5Timer.start();
                                                SlotMachine.getreels(3);

                                            }
                                        }

                                        Timer {//last timer before the reels stop
                                            id: stopReel5Timer
                                            interval: 300
                                            repeat: false
                                            running: false
                                            onTriggered: {
                                                reel5Timer.stop();
                                                imaginea.source = "images/playy.png";
                                                princ.isPressed = false; // Re-enable the button
                                                SlotMachine.getreels(4);
                                                princ.wingot=false;
                                                //insert here all the logic of the winning combinations and wins

                                                    SlotMachine.getwins(SlotMachine.a);
                                                            SlotMachine.calcwins(SlotMachine.a,SlotMachine.winscomb,SlotMachine.scatter,SlotMachine.sumwon);//function that adds wins
                                                SlotMachine.lastwincalc();
                                                SlotMachine.calcsquares();
                                                Connections
                                                {
                                                    target:SlotMachine
                                                    if (SlotMachine.sumwon!==0)
                                                    {princ.playwinsound();
                                                        doubleup.isvisible=true
                                                        princ.wingot=true;//register a win happened
                                                        imaginea.source="images/collect.png"
                                                    }
                                                }
                                            }
                                        }





                        }

                        //double up button
                        Rectangle{
                            id:doubleup
                            property bool isvisible:false
                            width:doublebutton.containsMouse ? parent.height /7 : parent.height /8
                            height: doublebutton.containsMouse ? parent.height /9 : parent.height /10
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.top: princ.bottom
                            anchors.topMargin: 10
                            visible: isvisible

                            Image {
                                id: doublee
                                source: "images/doubleup.png"
                                anchors.fill: parent
                            }
                            MouseArea{id:doublebutton
                                anchors.fill:parent
                                hoverEnabled: true
                                onClicked: {
                                            Connections
                                    {
                                        target:SlotMachine
                                        if (SlotMachine.sumwon<=150*SlotMachine.bet)
                                        {createDoubleWindow();
                                            if (SlotMachine.history[0]!==2)
                                                SlotMachine.updatehistory(1);
                                        SlotMachine.generate50();
                                        }
                                    }



                                }
                            }

                        }




                    //sum

                            Rectangle{id:summ
                                color:"red"
                                width:parent.height/3
                                height:parent.height/10
                                anchors.left:parent.left
                                anchors.top:parent.bottom
                                anchors.topMargin: 10
                                Rectangle{
                                    anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{
                                        text:" Credits: "+SlotMachine.sum.toFixed(2)
                                        font.pointSize:0.1*parent.width
                                        color:"black"
                                    }
                                }



                                //info button
                            Rectangle{
                                    id:info
                                    width: info2.containsMouse ? 0.65*summ.height : 0.55*summ.height
                                    height: info2.containsMouse ? 0.65*summ.height : 0.55*summ.height
                                    anchors.right:summ.left
                                    anchors.rightMargin: 5
                                    Image{
                                        anchors.fill:parent;
                                        id:infobox
                                        source:"images/info.png"
                                    }
                                MouseArea{
                                    anchors.fill:parent;
                                    id:info2
                                    hoverEnabled: true;
                                    onClicked: {createInfoWindow();

                                    }


                                }



                            }

                            }
                            Rectangle{id:winn
                                color:"blue"
                                width:parent.height/3
                                height:parent.height/10
                                anchors.left:summ.right
                                anchors.top:parent.bottom
                                anchors.topMargin: 10

                                Rectangle{
                                    anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{id:winammnt
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        //text:SlotMachine.is0() ? "Win: "+SlotMachine.lastwin().toFixed(2) : "Last Win: "+SlotMachine.sumwon.toFixed(2)
                                            text:{
                                                if (SlotMachine.sumwon!==0)
                                                {"Win: "+SlotMachine.sumwon.toFixed(2)

                                                }
                                                else
                                                {"Last Win: "+SlotMachine.lastwin.toFixed(2)

                                                }


                                            }

                                        //text:"last Win: "+SlotMachine.sumwon.toFixed(2)
                                        font.pointSize:0.11*parent.width
                                        color:"black"
                                    }
                                }

                            }


            //bet ammounts


                        Rectangle{
                            color:bet2.containsMouse ? "cyan" : "red"
                            width:parent.height/9
                            height:parent.height/10
                            id:sum2
                              anchors.right:parent.right
                                     anchors.top:parent.bottom
                                anchors.topMargin: 10
                                Rectangle{  anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{
                                        text:"2"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pointSize:10

                                    }

                                    MouseArea{id:bet2
                                        anchors.fill:parent
                                        hoverEnabled: true
                                        onClicked: {



                                            if (princ.isPressed===false)
                                           { sum2.color="cyan";sum1.color="red";sum08.color="red";sum04.color="red";sum02.color="red"
                                            SlotMachine.bet=2}
                                        }

                                    }

                                }



                        }

                        Rectangle{
                           // color:bet1.containsMouse ? "cyan" : "red"
                            color:"cyan"
                            width:parent.height/9
                            height:parent.height/10
                            anchors.rightMargin: 5
                            id:sum1
                              anchors.right:sum2.left
                                     anchors.top:parent.bottom
                                anchors.topMargin: 10
                                Rectangle{  anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{
                                        text:"1"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pointSize:10

                                    }

                                    MouseArea{id:bet1
                                        anchors.fill:parent
                                        hoverEnabled: true
                                        onClicked: {
                                            if (princ.isPressed===false)
                                            {sum2.color="red";sum1.color="cyan";sum08.color="red";sum04.color="red";sum02.color="red"
                                            SlotMachine.bet=1}
                                        }

                                    }

                                }

                        }
                        Rectangle{
                            color:bet08.containsMouse ? "cyan" : "red"
                            width:parent.height/9
                            height:parent.height/10
                            anchors.rightMargin: 5
                            id:sum08
                              anchors.right:sum1.left
                                     anchors.top:parent.bottom
                                anchors.topMargin: 10
                                Rectangle{  anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{
                                        text:"0.8"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pointSize:10

                                    }

                                    MouseArea{id:bet08
                                        anchors.fill:parent
                                        hoverEnabled: true
                                        onClicked: {
                                            if (princ.isPressed===false)
                                            {sum2.color="red";sum1.color="red";sum08.color="cyan";sum04.color="red";sum02.color="red"
                                            SlotMachine.bet=0.8}
                                        }

                                    }

                                }

                        }
                        Rectangle{
                            color:bet04.containsMouse ? "cyan" : "red"
                            width:parent.height/9
                            height:parent.height/10
                            anchors.rightMargin: 5
                            id:sum04
                              anchors.right:sum08.left
                                     anchors.top:parent.bottom
                                anchors.topMargin: 10
                                Rectangle{  anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{
                                        text:"0.4"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pointSize:10

                                    }

                                    MouseArea{id:bet04
                                        anchors.fill:parent
                                        hoverEnabled: true
                                        onClicked: {
                                            if (princ.isPressed===false)
                                            {sum2.color="red";sum1.color="red";sum08.color="red";sum04.color="cyan";sum02.color="red"
                                            SlotMachine.bet=0.4}
                                        }

                                    }

                                }

                        }
                        Rectangle{
                            color:bet02.containsMouse ? "cyan" : "red"
                            width:parent.height/9
                            height:parent.height/10
                            anchors.rightMargin: 5
                            id:sum02
                              anchors.right:sum04.left
                                     anchors.top:parent.bottom
                                anchors.topMargin: 10
                                Rectangle{  anchors.fill:parent
                                    anchors.margins: 5
                                    color:"white"
                                    Text{
                                        text:"0.2"
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pointSize:10

                                    }

                                    MouseArea{id:bet02
                                        anchors.fill:parent
                                        hoverEnabled: true
                                        onClicked: {
                                            if (princ.isPressed===false)
                                            {sum2.color="red";sum1.color="red";sum08.color="red";sum04.color="red";sum02.color="cyan"
                                            SlotMachine.bet=0.2}
                                        }

                                    }

                                }

                        }

                 }

        //sound effects


                MediaPlayer {
                        id: spinsound
                        source:  "images/spin4.m4a"
                        audioOutput: AudioOutput {id:volumul}
                    }


                MediaPlayer {
                        id: winsound
                        source:  "images/win1.wav"
                        audioOutput: AudioOutput {volume:0.4}
                    }




}


