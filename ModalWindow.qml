// ModalOverlay.qml
import QtQuick 2.15
import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtMultimedia
import com.company.slot_machine
import QtQuick.Layouts 1.1
Popup{

    modal:true
    width:Window.width*0.7
    height:Window.height*0.73

    //color:"#202020"

opacity:0.99
z:10


            Rectangle
            {
                anchors.fill:parent
                color:"#202020"
            }
}
