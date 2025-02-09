import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtMultimedia
import com.company.slot_machine
import QtQuick.Layouts 1.1

Rectangle{id:doublepage
    signal hideButton2()
    focus:true;
    width:Window.width*0.7
    height:Window.height*0.82
    color: "transparent"
    anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        z: 3

    MouseArea{ //created to not let the items below to work, works as a modal item
        anchors.fill:parent
        onClicked: {

             }
                 }
    HoverHandler{

    }

Rectangle{
    anchors.fill:parent;
    z:4
    anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            color:"#313B6F"

            //sums box
            Rectangle
            {id:infosum
                width:parent.width;
                height:parent.height/10
                color:"transparent"

                Rectangle{
                    anchors.left:parent.left;
                    width:parent.width/4
                    height:parent.height
                    anchors.leftMargin: 0.1*parent.width;
                    color:"transparent";
                    Text{
                        text:"Gambled Sum: "+SlotMachine.sumwon
                        anchors.fill:parent;
                        anchors.topMargin: 7
                        color:"black"
                         font.family:"Helvetica"
                         font.pointSize: 0.08*parent.width
                        //anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle{
                    anchors.right:parent.right;
                    width:parent.width/4
                    height:parent.height
                    anchors.rightMargin: 0.1*parent.width;
                    color:"transparent";
                    Text{
                        text:"Gamble to Win: "+2*SlotMachine.sumwon
                        anchors.fill:parent;
                        anchors.topMargin: 7
                        color:"black"
                         font.family:"Helvetica"
                         font.pointSize: 0.08*parent.width
                        //anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            //cards history box
            Rectangle//implement as queue
            {id:infohistory
                width:parent.width
                anchors.horizontalCenter:parent.horizontalCenter
                height:parent.height/5
                color:"yellow"
                anchors.top:infosum.bottom
                Rectangle
                {id:marginss

                    anchors.fill:parent;
                   // width:parent.width;
                    anchors.topMargin: 3
                    color:"#313B6F";
                }
                Rectangle{
                    anchors.top:marginss.top
                    anchors.topMargin: 3
                    id:cardshist
                    width:parent.width/2
                    anchors.horizontalCenter:parent.horizontalCenter
                    height:parent.height
                    color:"#313B6F";
                    Rectangle{id:card1
                        anchors.left:parent.left
                        width:parent.width*0.18
                        height:parent.height*0.85
                        color:"grey";
                        Image{id:card1i
                            anchors.fill:parent
                            source:SlotMachine.getimagehistory(SlotMachine.history[0])
                        }

                    }
                    Rectangle{id:card2
                        anchors.left:card1.right
                        width:parent.width*0.18
                        height:parent.height*0.85
                        anchors.leftMargin: 2
                        color:"grey";
                        Image{id:card2i
                            anchors.fill:parent
                            source:SlotMachine.getimagehistory(SlotMachine.history[1])
                        }

                    }
                    Rectangle{id:card3
                        anchors.left:card2.right
                        anchors.leftMargin: 2

                        width:parent.width*0.18
                        height:parent.height*0.85
                        color:"grey";
                        Image{id:card3i
                            anchors.fill:parent
                             source:SlotMachine.getimagehistory(SlotMachine.history[2])
                        }

                    }
                    Rectangle{id:card4
                        anchors.left:card3.right
                        anchors.leftMargin: 2

                        width:parent.width*0.18
                        height:parent.height*0.85
                        color:"grey";
                        Image{id:card4i
                            anchors.fill:parent
                             source:SlotMachine.getimagehistory(SlotMachine.history[3])
                        }

                    }
                    Rectangle{id:card5
                        anchors.left:card4.right
                        anchors.leftMargin: 2

                        width:parent.width*0.18
                        height:parent.height*0.85
                        color:"grey";
                        Image{id:card5i
                            anchors.fill:parent
                           source:SlotMachine.getimagehistory(SlotMachine.history[4])
                        }

                    }
                    Timer{
                        id:delaycard
                        interval:1000
                        running:false
                        repeat:false
                        onTriggered:{
                           SlotMachine.updatehistory(1);//delayed appearence of reversed card, after a succsesful,non final doubling
                        }

                    }


            }}

            //cards switching black red
            Rectangle
            {id:cards
                width:parent.width/7
                anchors.horizontalCenter:parent.horizontalCenter
                height:parent.height/3
                color:"transparent"
                anchors.top:infohistory.bottom

                Image{id:colorcard
                    anchors.fill:parent;
                    source:"images/blackreverse.png"
                    anchors.bottomMargin: 6
                }
                Timer{id:cardstimer
                    interval: 150
                    running: true
                    repeat: false
                    onTriggered: {
                        colorcard.source=SlotMachine.getimagecard(1);
                        cards2timer.start()

                    }
                }
                Timer{id:cards2timer
                    interval: 150
                    running: false
                    repeat: false
                    onTriggered: {
                        colorcard.source=SlotMachine.getimagecard(2);
                        cardstimer.start()
                    }
                }
                Timer{
                    id:blackcardgot
                    interval:1000
                    running:false
                    repeat:false
                    onTriggered:{
                        cardstimer.start();
                    }
                }

                Timer{
                    id:wronggot
                    interval:850
                    running:false
                    repeat:false
                    onTriggered:{
                        doublepage.hideButton2();

                        //cardstimer.start();
                    }
                }




            }



            Rectangle{//separate cards from the bottom part
                id:yewllowdown
                width:parent.width;
                color:"yellow"
                height:3
                anchors.bottom:remaincards.top

            }

            //remaining bets
            Rectangle{
                id:remaincards

                property var  nrremaining:SlotMachine.findnrdoublings(); //get the value of the total doublings that can be done
                anchors.top:cards.bottom
                width:parent.width/3
                height:parent.height/13
                color:"transparent"
                anchors.horizontalCenter:parent.horizontalCenter
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 0.05*parent.width
                    text:"Doubles remaining: "+ remaincards.nrremaining
                    color:"black"

                }

            }

            //sum won
            Rectangle{
                id:sumbeingwin
                anchors.top:remaincards.bottom
                width:parent.width/3
                height:parent.height/11
                color:"transparent"
                anchors.horizontalCenter:parent.horizontalCenter

                Text{

                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"WIN: "+SlotMachine.sumwon
                    color:"red"
                    font.pointSize: 0.07*parent.width

                }


            }
            //take, red, black
            Rectangle{
                id:choice
                anchors.top:sumbeingwin.bottom
                width:parent.width/3
                height:parent.height/5
                anchors.topMargin:5
                color:"transparent"
                anchors.horizontalCenter:parent.horizontalCenter

                //main take money button
                Rectangle{id:takemoney
                    anchors.horizontalCenter:parent.horizontalCenter
                    width:mainbutton.containsMouse ? parent.width/3.5 : parent.width/4
                    height:mainbutton.containsMouse ? parent.height*0.65 : parent.height*0.6
                    color:"white"

                    MouseArea{id:mainbutton
                        anchors.fill:parent
                        hoverEnabled: true
                        onClicked:{ //mergeeeeeeeeeee
                            doublepage.hideButton2();
                            SlotMachine.sum+=SlotMachine.sumwon
                            SlotMachine.lastwin=SlotMachine.sumwon
                            princ.wingot=false;
                            doubleup.isvisible=false
                                imaginea.source="images/playy.png"

                        }

                    }
                    Image{
                        anchors.fill:parent;
                        source:"images/collect.png"
                    }

                }


                Rectangle{
                        id:blackcard//0
                        //anchors.horizontalCenter:parent.horizontalCenter
                        anchors.right:takemoney.left
                        anchors.margins:10
                        color:"black"
                        PauseAnimation {
                                        duration: 1000
                                    }
                        width:blacktap.containsMouse ? parent.width/5 : parent.width/6;
                        height:blacktap.containsMouse ? parent.height*0.5 : parent.height*0.4
                        MouseArea{
                            id:blacktap
                            anchors.fill:parent;
                            hoverEnabled: true
                            onClicked: {
                                Connections
                                {
                                    target:SlotMachine
                                    if ( remaincards.nrremaining>0)
                                    {if (SlotMachine.chance50===0)
                                    {
                                        SlotMachine.sumwon=SlotMachine.sumwon*2;
                                        SlotMachine.generate50();

                                        remaincards.nrremaining--;
                                           cardstimer.stop()
                                            cards2timer.stop()
                                            colorcard.source=SlotMachine.getimagecard(3);
                                            blackcardgot.start();
                                            winsoundcards.play()

                                            if (remaincards.nrremaining===0)
                                            {                                        SlotMachine.sum+=SlotMachine.sumwon
                                                princ.wingot=false;
                                                cardstimer.stop()
                                                 cards2timer.stop()
                                                wronggot.start();
                                                colorcard.source=SlotMachine.getimagecard(3);
                                                SlotMachine.lastwin=SlotMachine.sumwon
                                                doubleup.isvisible=false
                                                    imaginea.source="images/playy.png"
                                               // doublepage.hideButton2();
                                                winsoundcards.play()

                                            }

                                            SlotMachine.updatehistory(3);
                                                delaycard.start()


                                    }else //if the numbers dont match
                                    {losesoundcards.play()
                                        SlotMachine.sumwon=0;
                                            colorcard.source=SlotMachine.getimagecard(4);
                                            wronggot.start();
                                            cardstimer.stop()
                                             cards2timer.stop()
                                        //doublepage.hideButton2();

                                        SlotMachine.sum+=SlotMachine.sumwon
                                        princ.wingot=false;
                                        doubleup.isvisible=false
                                            imaginea.source="images/playy.png"
                                        SlotMachine.lastwin=0

                                             SlotMachine.updatehistory(4);

                                    }

                                    }
                                    else//if there are no remaining
                                    {
                                        SlotMachine.sum+=SlotMachine.sumwon
                                        princ.wingot=false;
                                        doubleup.isvisible=false
                                            imaginea.source="images/playy.png"
                                        //doublepage.hideButton2();

                                    }


                                }



                            }


                        }




                }


                Rectangle{id:redcard//1
                    //anchors.horizontalCenter:parent.horizontalCenter
                    color:"red"
                    width:redtap.containsMouse ? parent.width/5 : parent.width/6;
                    height:redtap.containsMouse ? parent.height*0.5 : parent.height*0.4
                    anchors.left:takemoney.right
                    anchors.margins:10

                    MouseArea{
                        id:redtap
                        anchors.fill:parent;
                        hoverEnabled: true
                        PauseAnimation {
                                        duration: 1000
                                    }
                        onClicked:{
                            Connections
                            {
                                target:SlotMachine
                                if ( remaincards.nrremaining>0)
                                {if (SlotMachine.chance50===1)
                                {
                                    SlotMachine.sumwon=SlotMachine.sumwon*2;
                                    SlotMachine.generate50();
                                        cardstimer.stop()
                                         cards2timer.stop()
                                        blackcardgot.start();
                                        colorcard.source=SlotMachine.getimagecard(4);
                                    //doublepage.hideButton2()

                                        winsoundcards.play()
                                     remaincards.nrremaining--; //decrease the nr of combinations
                                        if (remaincards.nrremaining===0)
                                        {                                        SlotMachine.sum+=SlotMachine.sumwon
                                            princ.wingot=false;
                                            doubleup.isvisible=false
                                            cardstimer.stop()
                                             cards2timer.stop()
                                            wronggot.start();
                                            winsoundcards.play()
                                            colorcard.source=SlotMachine.getimagecard(4);
                                            SlotMachine.lastwin=SlotMachine.sumwon
                                                imaginea.source="images/playy.png"
                                            //doublepage.hideButton2();

                                        }
                                        SlotMachine.updatehistory(4);
                                        delaycard.start()


                                }else
                                {losesoundcards.play()
                                    SlotMachine.sumwon=0;
                                    //doublepage.hideButton2();
                                    SlotMachine.sum+=SlotMachine.sumwon
                                    princ.wingot=false;
                                    doubleup.isvisible=false
                                        cardstimer.stop()
                                         cards2timer.stop()
                                    wronggot.start();
                                        colorcard.source=SlotMachine.getimagecard(3);
                                        imaginea.source="images/playy.png"
                                    SlotMachine.lastwin=0
                                         SlotMachine.updatehistory(3);

                                }}
                                else//not really needed
                                {
                                    SlotMachine.sum+=SlotMachine.sumwon
                                    princ.wingot=false;
                                    doubleup.isvisible=false
                                        imaginea.source="images/playy.png"
                                    doublepage.hideButton2();

                                }


                            }

                        }
                    }

                }




            }

            MediaPlayer {
                    id: winsoundcards
                    source:  "images/wincards.wav"
                    audioOutput: AudioOutput {volume:0.9}
                }
            MediaPlayer {
                    id: losesoundcards
                    source:  "images/losecards.wav"
                    audioOutput: AudioOutput {volume:0.9}
                }













           /* Button{
                id:clearbutton;
                onClicked: doublepage.hideButton2();
                width:30

            }*/
        }


}
