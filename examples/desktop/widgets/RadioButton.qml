import QtQuick 1.0
import "../../../components" as Components
import "../plugin"

// jb : Size should not depend on background, we should make it consistent

Components.RadioButton{
    id:radiobutton
    property variant text
    background: QStyleItem {
        elementType:"radiobutton"
        width:110
        height:18
        sunken:pressed
        on:checked || pressed
        hover:containsMouse
        text:radiobutton.text
        enabled:radiobutton.enabled
    }
    checkmark: Item{}
}
