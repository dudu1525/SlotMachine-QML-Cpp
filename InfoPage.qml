import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtMultimedia
import com.company.slot_machine
import QtQuick.Layouts 1.1

Rectangle{id:infoPage
    signal hideButton()

    width:Window.width*0.7
    height:Window.height*0.75
    color:"#202020"
opacity:0.99
    anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top


            Button{
                id:clearbutton;
                onClicked: infoPage.hideButton();
                width:30

            }
            Text{
                id:infotext

                text:"Payouts & informations"
                color:"cyan"
                                    font.family:"Helvetica"
                                    font.pointSize:0.025*parent.width
                                    anchors.horizontalCenter:parent.horizontalCenter

            }


                                            //GRID START

            Rectangle{
                id:gridtotal
                anchors.top:infoPage.top
                width: parent.width * 0.97
                        height: parent.height * 0.6
                anchors.topMargin: parent.height*0.1
                 anchors.horizontalCenter:parent.horizontalCenter
                 color:"grey"

            Grid {id:gridsymbols

              anchors.fill:parent
                anchors.horizontalCenter: parent.horizontalCenter
                columns: 4
                rows:2
                spacing: 10
anchors.margins: 0.005*parent.width
                Rectangle {id:image7first
                           color: "cyan"
                           width: gridtotal.width / 4 -gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:image7
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/num7.png"
                                   }

                               }

                               Column {
                                           anchors.left: image7.right
                                           anchors.verticalCenter: image7.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+SlotMachine.bet*1000
                                               font.pointSize: 0.07 *image7first.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+SlotMachine.bet*200
                                               font.pointSize: 0.07 *image7first.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+SlotMachine.bet*80
                                               font.pointSize: 0.07 * image7first.width
                                               color: "white"
                                           }
                                       }

                           }
                       }
                       Rectangle {id:imagestarfirst
                           color: "cyan"
                           width: gridtotal.width / 4-gridsymbols.spacing
                           height: gridtotal.height /2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imagestar
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/starr.png"
                                   }

                               }

                               Column {
                                           anchors.left: imagestar.right
                                           anchors.verticalCenter: imagestar.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*140).toFixed(1)
                                               font.pointSize: 0.07 *imagestarfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*6).toFixed(1)
                                               font.pointSize: 0.07 *imagestarfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*2).toFixed(1)
                                               font.pointSize: 0.07 * imagestarfirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }
                       Rectangle {id:imagewaterfirst
                           color: "cyan"
                           width: gridtotal.width /4-gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imagewater
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/melon.png"
                                   }

                               }

                               Column {
                                           anchors.left: imagewater.right
                                           anchors.verticalCenter: imagewater.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*180).toFixed(1)
                                               font.pointSize: 0.07 *imagewaterfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*120).toFixed(1)
                                               font.pointSize: 0.07 *imagewaterfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*20).toFixed(1)
                                               font.pointSize: 0.07 * imagewaterfirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }
                       Rectangle {id:imagestrawfirst
                           color: "cyan"
                           width: gridtotal.width /4-gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imagestraw
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/grapes.png"
                                   }

                               }

                               Column {
                                           anchors.left: imagestraw.right
                                           anchors.verticalCenter: imagestraw.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*180).toFixed(1)
                                               font.pointSize: 0.07 *imagestrawfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*120).toFixed(1)
                                               font.pointSize: 0.07 *imagestrawfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*20).toFixed(1)
                                               font.pointSize: 0.07 * imagestrawfirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }
                       Rectangle {id:imageprunefirst
                           color: "cyan"
                           width: gridtotal.width / 4-gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imageprune
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/prune.png"
                                   }

                               }

                               Column {
                                           anchors.left: imageprune.right
                                           anchors.verticalCenter: imageprune.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*50).toFixed(1)
                                               font.pointSize: 0.07 *imageprunefirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*12).toFixed(1)
                                               font.pointSize: 0.07 *imageprunefirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*3).toFixed(1)
                                               font.pointSize: 0.07 * imageprunefirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }
                       Rectangle {id:imagecherryfirst
                           color: "cyan"
                           width: gridtotal.width / 4-gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imagecherry
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/cherry.png"
                                   }

                               }

                               Column {
                                           anchors.left: imagecherry.right
                                           anchors.verticalCenter: imagecherry.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*40).toFixed(1)
                                               font.pointSize: 0.07 *imagecherryfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*10).toFixed(1)
                                               font.pointSize: 0.07 *imagecherryfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*3).toFixed(1)
                                               font.pointSize: 0.07 * imagecherryfirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }
                       Rectangle {id:imagelemonfirst
                           color: "cyan"
                           width: gridtotal.width / 4-gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imagelemon
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/lemons.png"
                                   }

                               }

                               Column {
                                           anchors.left: imagelemon.right
                                           anchors.verticalCenter: imagelemon.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*40).toFixed(1)
                                               font.pointSize: 0.07 *imagelemonfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*10).toFixed(1)
                                               font.pointSize: 0.07 *imagelemonfirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*3).toFixed(1)
                                               font.pointSize: 0.07 * imagelemonfirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }
                       Rectangle {id:imageorangefirst
                           color: "cyan"
                           width: gridtotal.width / 4-gridsymbols.spacing
                           height: gridtotal.height / 2-gridsymbols.spacing
                           Rectangle{
                               anchors.fill:parent
                               anchors.margins:5
                               color:"black"
                               Rectangle{id:imageorange
                                   width:parent.width*0.6
                                   height:parent.height
                                   color:parent.color
                                   Image{
                                       anchors.fill:parent
                                       anchors.margins: 5
                                       source:"images/orange.png"
                                   }

                               }

                               Column {
                                           anchors.left: imageorange.right
                                           anchors.verticalCenter: imageorange.verticalCenter  // Align column vertically to image center
                                            // Margin to add space between image and text
                                           spacing: 10 // Space between the text rows

                                           Text {
                                               text: " 5· "+(SlotMachine.bet*40).toFixed(1)
                                               font.pointSize: 0.07 *imageorangefirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 4· "+(SlotMachine.bet*10).toFixed(1)
                                               font.pointSize: 0.07 *imageorangefirst.width
                                               color: "white"
                                           }

                                           Text {
                                               text: " 3· "+(SlotMachine.bet*4).toFixed(1)
                                               font.pointSize: 0.07 * imageorangefirst.width
                                               color: "white"
                                           }
                                       }
                           }
                       }


            }
            }

                    //INFO START


            Rectangle { color: "cyan";
                width: parent.width * 0.97
                        height: parent.height * 0.25
            anchors.top:gridtotal.bottom
            anchors.horizontalCenter:parent.horizontalCenter
            anchors.topMargin:5
            Rectangle{
                anchors.fill:parent
                anchors.margins:5
                color:"grey"
                Text{
                    text:" The 5line slot machine is a slot machine that works on 5 rows and has an RTP of 95.89%"
                    font.pointSize:0.01*parent.width
                }
            }

            }
}

